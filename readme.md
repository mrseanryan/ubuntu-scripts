# :scroll: ubuntu-scripts readme

A few simple scripts to setup a basic dev environment on Ubuntu.

## status - stable

Tested on Ubuntu 18.04

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg)](https://paypal.me/mrseanryan)

## features

Installs the following:

- docker and docker-compose
- git and git lfs
- git aliases and credential caching
- graphviz
- network tools like: curl, ifconfig
- npm, yarn
- nvm, node 8 (latest)
- Visual Code

Extras can also be installed:

- ftp server to easily transfer files (SCP port 22 - needs ssh login to be setup)
- xrdp (for remote desktop)
- chrome, chrome driver
- useful user scripts

_note: probably NOT suitable for a production box!_

## usage

The 'clever' way:

```
sudo apt install curl

curl -o- https://raw.githubusercontent.com/mrseanryan/ubuntu-scripts/master/install.sh | bash
```

_note: if you also want docker installed, instead use `install-with-docker.sh`_

OR if that fails:

```
sudo apt-get update

sudo apt install git

git clone https://github.com/mrseanryan/ubuntu-scripts.git

cd ubuntu-scripts

./go.sh
```

_note: if you also want docker installed, instead use `go.sh --docker`_

## extras

To install XRDP to allow Remote Desktop from Windows:

```
cd ubuntu-scripts
./extra-install-xrdp.sh
```

### setting up ssh login (needed for ftp over scp)

`./extra-install-ssh-server.sh`

`sudo ./extra-configure-ssh-server.sh` (only run this once!)

- then setup client side, and test from the client:

https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
https://help.ubuntu.com/community/SSH/OpenSSH/Keys

### tips about ssh

- test login:

`ssh -v user@hostname`

- to use a hostname for a VM: for VM hosted on Windows, edit Windows hosts file to map IP to host

- this line or similar may need to be disabled in `/etc/ssh/sshd_config`

`Subsystem        sftp    /usr/lib/openssh/sftp-server`

- client side can specify identity file, if more than one key on client:

`ssh user@host -i path-to-rsa`

### setting up ftp (scp)

`./extra-install-ftp-server-NOT-secure.sh`

`extra-install-ftp-secure-the-ftp-server.sh`

Anonymous and plain ftp are disabled, since they are not secure.

FTP over SCP (using ssh) is enabled for local users.

This requires setting up login via ssh (previous section).

Unless you add user name to `/etc/vsftpd.chroot_list` (not recommended)

#### references about ssh, ftp

https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
http://xmodulo.com/secure-ftp-service-vsftpd-linux.html
https://www.krizna.com/ubuntu/setup-ftp-server-on-ubuntu-14-04-vsftpd/
https://www.linode.com/community/questions/485/ssh-service-is-failing-to-start

### Visual Code - remote development

With `ssh` set up, it is possible to use Visual Code remotely:

https://code.visualstudio.com/docs/remote/remote-overview

## known issues

### Visual Code is not installed

The Visual Code install script involves some prompts which fail to show when installed via `curl`.

To fix, run the script:

```
cd ubuntu-scripts
./install-visual-code.sh
```

### docker-compose version is hard-coded in script

The scripts will install the latest `docker` but not the latest `docker-compose`.

You may need to edit the version of `docker-compose` in this script, and then run it again:

`install-docker-compose.sh`

## authors

Original work by Sean Ryan - mr.sean.ryan(at gmail.com)

## licence = MIT

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
