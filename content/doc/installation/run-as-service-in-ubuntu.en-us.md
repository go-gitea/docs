---
date: "2017-07-21T12:00:00+02:00"
title: "Run as service in Linux"
slug: "linux-service"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "installation"
    name: "Linux service"
    weight: 20
    identifier: "linux-service"
---

### Run as service in Ubuntu 16.04 LTS  
 
#### Using supervisor  

Install supervisor by running below command in terminal:  
```sudo apt install supervisor```  

Create a log dir for the supervisor logs(assuming gitea is installed in /home/git/gitea/):  
```mkdir /home/git/gitea/log/supervisor```  

Open supervisor config file in vi/vim/nano etc.  
```sudo vim /etc/supervisor/supervisord.conf```  

And append the following code at the end of the file, [reference](https://github.com/go-gitea/gitea/blob/master/contrib/supervisor/gitea):  
```
[program:gitea]
directory=/home/git/gitea/
command=/home/git/gitea/gitea web -p PORT
autostart=true
autorestart=true
startsecs=10
stdout_logfile=/home/git/gitea/log/supervisor/stdout.log
stdout_logfile_maxbytes=1MB
stdout_logfile_backups=10
stdout_capture_maxbytes=1MB
stderr_logfile=/home/git/gitea/log/supervisor/stderr.log
stderr_logfile_maxbytes=1MB
stderr_logfile_backups=10
stderr_capture_maxbytes=1MB
user = git
environment = HOME="/home/git", USER="git"
```  

Change the user(git) accordingly to yours. And /home/git too if your username is different than git. Change the PORT or remove the -p flag if default port is used.  

Lastly start and enable supervisor at boot:  
```sudo systemctl start supervisor```  
```sudo systemctl enable supervisor```  

### Run as systemd service in Ubuntu 16.04 LTS  
 
#### Using systemd  

Run below command in terminal:  
```sudo vim /etc/systemd/system/gitea.service```  

Add the following code to the file, [reference](https://github.com/go-gitea/gitea/blob/master/contrib/systemd/gitea.service):  
```
[Unit]
Description=Gitea (Git with a cup of tea)
After=syslog.target
After=network.target
After=mysql.service
#After=postgresql.service
#After=memcached.service
#After=redis.service

[Service]
# Modify these two values and uncomment them if you have
# repos with lots of files and get an HTTP error 500 because
# of that
###
LimitMEMLOCK=infinity
LimitNOFILE=65535
Type=simple
User=git
Group=git
WorkingDirectory=/home/git/gitea
ExecStart=/home/git/gitea/gitea web -p PORT
Restart=always
Environment=USER=git HOME=/home/git

[Install]
WantedBy=multi-user.target
```  

Uncomment any service need to enabled like mysql in this case in Unit section.  

Change the user(git) accordingly to yours. And /home/git too if your username is different than git. Change the PORT or remove the -p flag if default port is used.  

Lastly start and enable gitea at boot:  
```sudo systemctl start gitea```  
```sudo systemctl enable gitea```  
