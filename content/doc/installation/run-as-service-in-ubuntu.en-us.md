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
