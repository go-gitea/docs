---
date: "2017-08-23T09:00:00+02:00"
title: "Démarrer en tant que service Windows"
slug: "windows-service"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "installation"
    name: "Service Windows"
    weight: 30
    identifier: "windows-service"
---

# Activer un service Windows

Pour activer le service Windows Gitea, ouvrez une `cmd` en tant qu'Administrateur puis utilisez la commande suivante :

```
sc create gitea start= auto binPath= ""C:\gitea\gitea.exe" web --config "C:\gitea\custom\conf\app.ini""
```

N'oubliez pas de remplacer `C:\gitea` par le chemin que vous avez utilisez pour votre installation.

Ensuite, ouvrez "Services Windows", puis recherchez le service `gitea`, faites un clique droit et selectionnez "Run". Si tout fonctionne, vous devriez être capable d'accèder à Gitea à l'URL `http://localhost:3000` (ou sur le port configuré si différent de 3000).

## Désactiver un service Windows

Pour désactiver le service Windows Gitea, ouvrez une `cmd` en tant qu'Administrateur puis utilisez la commande suivante :

```
sc delete gitea
```
