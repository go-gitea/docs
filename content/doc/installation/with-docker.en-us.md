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

## Data on Host

First of all you should simply pull the Docker container:

```
docker pull gitea/gitea:latest
```

To keep your repositories and some other data persistent you should create a directory that stores this data in the future.

```
sudo mkdir -p /var/lib/gitea
```

Now it's time to launch the docker container, this is a pretty straight-forward process. You have to define the port mapping and you also have to provide the volume path for persisting the data:

```
docker run -d --name=gitea -p 10022:22 -p 10080:3000 -v /var/lib/gitea:/data gitea/gitea:latest
```

Now you should have a running instance of Gitea, to access the web UI just visit http://hostname:10080 in your favorite browser, if you want to clone repositories you can do it in the above case with `git clone ssh://git@hostname:10022/username/repo.git`.

## Named Volumes 

This guide will result in both the Gitea and PostgreSQL data stored in Docker named volumes. This makes for easy backup, restore and upgrades.

### The Database

First get the named volume ready:

```
$ docker volume create --name gitea-db-data
```

Now that we have a volume ready, we can pull and run the PostgreSQL image. This is also based upon Alpine Linux just like Gitea. This will mount the named volume at the correct location instead of a host dir.

```
$ docker pull postgres:alpine
$ docker run -d --name gitea-db \
    -e POSTGRES_PASSWORD=<PASSWORD> \
    -v gitea-db-data:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres:alpine
```

Now the database is up and running, we need to configure it. Make sure you remember the password for when Gitea starts.

```
$ docker exec -it gitea-db psql -U postgres
psql (9.6.1)
Type "help" for help.

postgres=# CREATE USER gitea WITH PASSWORD '<PASSWORD>';
CREATE ROLE
postgres=# CREATE DATABASE gitea OWNER gitea;
CREATE DATABASE
postgres=# \q
$
```

### Gitea

First, the named volume

```
$ docker volume create --name gitea-data
```

Now run (remove the dns entry if not needed):

```
$ docker run -d --name gitea \
	--link gitea-db:gitea-db \
	--dns 10.12.10.160 \
	-p 11180:3000 \
	-p 8322:22 \
	-v gitea-data:/data \
	gitea/gitea:latest
```

You should now have two Docker containers for Gitea and PostgreSQL plus two Docker named volumes and you should have a running instance of Gitea, to access the web UI just visit http://hostname:11180 in your favorite browser.

# Customization

Customization files described [here](https://docs.gitea.io/en-us/customizing-gitea/) should be placed in `/data/gitea` directory.

Configuration file after installation will be saved at `/data/gitea/conf/app.ini`

# Anything missing?

Are we missing anything on this page? Then feel free to reach out to us on our [Discord server](https://discord.gg/NsatcWJ), there you will get answers to any question pretty fast.
