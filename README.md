# PRTG-Linux-APT-Updates
 Monitor APT updates

## Install
### User rights
```
sudo visudo
hades ALL=NOPASSWD: /usr/bin/apt-get update
```

### skript
```
nano ~/apt_updates.sh
chmod +x apt_updates.sh
sudo mkdir -p /var/prtg/scriptsxml/
sudo cp apt_updates.sh /var/prtg/scriptsxml/
```