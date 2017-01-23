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

We provide automatically updated Docker images within our Docker Hub organization. It is up to you and your deployment to always use the latest stable tag or to use another service that updates the Docker image for you. First of all you should simply pull the Docker container:

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

## Anything missing?

Are we missing anything on this page? Then feel free to reach out to us on our [Gitter channel](https://gitter.im/go-gitea/gitea/), there you will get answers to any question pretty fast.
