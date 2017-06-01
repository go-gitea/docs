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

## Specify the custom folder

The default custom folder is `GITEA_HOME/custom`, and you can set it by the env `GITEA_CUSTOM`.

## Customizing /robots.txt

To make Gitea serve your own `/robots.txt` (by default, an empty 404 status is served), simply create a file called `robots.txt` in the `custom` folder with the [expected contents](http://www.robotstxt.org/). **Note** that you have to restart Gitea for it to notice the new `robots.txt`.

## Serving custom public files

To make Gitea serve custom public files (like pages and images), use the folder `custom/public/` as the webroot. Symbolic links will be followed

## Changing the default avatar

Place the png image at the following path: `custom/public/img/avatar_default.png`

## Customizing licenses/readme/locales/labels/gitignores

Put your customerize files into `custom/options/license`/`custom/options/readme/`/`custom/options/locale`/`custom/options/label/`/`custom/options/gitignore`

## Customizing templates

Put your template files on `custom/templates/`