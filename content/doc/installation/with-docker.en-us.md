---
date: "2016-12-01T16:00:00+02:00"
title: "Installation with Docker"
slug: "install-with-docker"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "installation"
    name: "With Docker"
    weight: 10
    identifier: "install-with-docker"
---

# Installation with Docker

We provide automatically updated Docker images within our Docker Hub organization. It is up to you and your deployment to always use the latest stable tag or to use another service that updates the Docker image for you. 

Your Gitea instance will need a database. If you have a supported database already, you can reuse it. As an example, the instructions below create a PostgreSQL 9.6 database in a separate Docker container for use by Gitea.

First, fetch the required Docker images:
```
docker pull busybox 
docker pull postgres:9.6 
docker pull gitea/gitea:latest
```

Next, create some directories to store the containers' data:
```
mkdir -p /var/lib/gitea /var/lib/pgsql
```

Set up and start a PostgreSQL database instance:
```
docker run --name pgsql-data \
    -v /var/lib/pgsql/etc/postgresql-common:/etc/postgresql-common \
    -v /var/lib/pgsql/var/log/postgresql:/var/log/postgresql \
    -v /var/lib/pgsql/var/lib/postgresql/data:/var/lib/postgresql/data \
    busybox true

docker create --name pgsql \
    --volumes-from pgsql-data \
    -v /etc/localtime:/etc/localtime:ro \
    -e POSTGRES_PASSWORD=asdffdsa \
    postgres:9.6
 
docker start pgsql

sleep 5 # wait 5 seconds for database to start up
```

Now that your database is running, you can create a username, password, and database for Gitea to use:
```
docker run --rm -ti --link pgsql -e PGPASSWORD=asdffdsa postgres:9.6 \
    psql -h pgsql -U postgres \
        -c "create role gitea encrypted password 'gitea' nosuperuser createdb createrole inherit login"

docker run --rm -ti --link pgsql -e PGPASSWORD=asdffdsa postgres:9.6 \
    createdb -h pgsql -U postgres --owner gitea --encoding utf8 gitea
```

Note that with this configuration, for security your PostgreSQL database will be accessible only from other Docker containers. You won't be able to access it from the outside world, or even from a regular shell on the same machine. This is why you must run the `pgsql` commands above through Docker -- this grants them access to your database via the `--link pgsql` parameter.

With a working database, you can now set up Gitea:
```
docker run --name gitea-data -v /var/lib/gitea:/data busybox true
	
docker create --link pgsql \
    -p 10080:3000 -p 10022:22 \
    --volumes-from gitea-data -v /etc/localtime:/etc/localtime:ro \
    --name gitea gitea/gitea:latest

docker start gitea

```

Now you should have a running instance of Gitea. To access the web UI just visit `http://hostname:10080/` in your favorite browser. When you first access the site, it will be in "install mode", and ask you to configure the database and other settings.

Most fields you can leave set to their defaults, but you will need to change a few fields:

* For database type, select `PostgreSQL`
* Database host is `pgsql`
* Database username is `gitea`
* Database password is `gitea`
* Database name is `gitea`
* SSH Port is `10022`
* Application URL is `http://localhost:10080/`

Once you enter those details, along with any other details unique to your situation, you can complete the installation and begin using your new Gitea installation.

Note especially that you will need to enter the hostname of your machine in "Application URL". The example above uses `localhost`, but that will mean you can only access your Gitea instance from the same machine.

To clone repositories, if you use the ports above your commands will be similar to `git clone ssh://git@hostname:10022/username/repo.git`.

## Anything missing?

Are we missing anything on this page? Then feel free to reach out to us on our [Gitter channel](https://gitter.im/go-gitea/gitea/), there you will get answers to any question pretty fast.
