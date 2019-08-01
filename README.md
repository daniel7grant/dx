# dx: Docker eXec

Docker exec simplified: compatible with docker exec and defaults to the container shell if no argument given.
Supports completion with own bash_completion file.

## Usage
Just write dx, the name of the container and the command to run, or leave it empty to enter the shell.

```console
[user@host] $ dx container_name cat /etc/hosts   # runs the command
[user@host] $ dx container_name                  # drops into interactive shell
[user@host] $ dx container_ubuntu                # loads bash
[user@host] $ dx container_alpine                # loads sh
[user@host] $ dx container_alpine -it /bin/bash  # supports original flags (what's the use then though?)
```

## Installation
Clone and enter the directory and simply run `make install`. By default it uses `/usr/local/bin` and `/etc/bash_completion.d` as installation directories. For different installation you can use the `INSTALL_LOCATION` and `COMPLETION_LOCATION`
```console
[user@host] $ make install                         # install to /usr/local/bin
[user@host] $ make install INSTALL_LOCATION=~/bin  # install to homedir of user
```

## Uninstall
Similarly to uninstall, run `make uninstall`. Be sure to match the original locations.
 
