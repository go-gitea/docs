---
date: "2017-01-20T16:00:00+02:00"
title: "Customizing Gitea"
slug: "customizing-gitea"
weight: 9
toc: false
draft: false
menu:
  sidebar:
    parent: "advanced"
    name: "Customizing Gitea"
    weight: 9
    identifier: "customizing-gitea"
---

# Customizing Gitea

The main way to customize Gitea is by using the `custom` folder. This is the central place to override and configure features.

Use `GITEA_CUSTOM` to define another folder instead. For example:

```
GITEA_CUSTOM=/srv/gitea/mycustom ./gitea web
```

**Note** that by default Gitea will use the `custom` folder in the current working directory.

## Customizing /robots.txt

To make Gitea serve your own `/robots.txt` (by default, an empty 404 status is served), simply create a file called `robots.txt` in the `custom` folder with the [expected contents](http://www.robotstxt.org/). **Note** that you have to restart Gitea for it to notice the new `robots.txt`.

## Serving custom public files

To make Gitea serve custom public files (like pages and images), use the folder `custom/public/` as the webroot. Symbolic links will be followed

## Changing the default avatar

Place the png image at the following path: `custom/public/img/avatar_default.png`
