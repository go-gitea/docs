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

## Customizing /robots.txt

To make Gitea serve your own `/robots.txt` (by default, an empty 404 status is served), simply create a file called `robots.txt` in the `custom` folder with the [expected contents](http://www.robotstxt.org/).
