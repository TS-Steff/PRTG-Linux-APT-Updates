# PRTG-Linux-APT-Updates
 Monitor APT updates  
 SSH skript advanced

## Install
### User rights
```
sudo visudo
%username% ALL=NOPASSWD: /usr/bin/apt-get update
```
replace %username% with your username

### skript
```
nano ~/apt_updates.sh
chmod +x apt_updates.sh
sudo mkdir -p /var/prtg/scriptsxml/
sudo cp apt_updates.sh /var/prtg/scriptsxml/
```