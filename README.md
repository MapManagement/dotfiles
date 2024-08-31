# Dotfiles

This repository can be used to create a fully working development environment à la MapManagement
style. I'm currently using Arch and i3 as my foundation.
[My Arch guide](https://github.com/MapManagement/dotfiles/blob/master/guides/arch_guide.md) explains
the whole installation. To easen the process of setting up the machine after the base installation,
I created an Ansible playbook to automate the installation and following configuration/customization
of every package I need.

## Prerequisites

Make sure to install ``python`` and the ``python-pip`` package.

```sh
sudo pacman -S python python-pip
```

## Installation

1. Clone this repo onto your fresh installation of an Arch based distro. To avoid any problems, I
recommend doing it on an empty home directory. If you wish to update your dotfiles, you have to
use a future update script.
2. You can then run ``python setup_machine.py``, answer a few question regarding a few setup steps
and wait until the script has finished its work.
3. If you didn't run into any errors, you should restart now.
4. I'd recommend checking your specific monitor configuration and change following files:
    - ``~/.config/i3/set_monitors.sh``
    - ``~/.config/i3/config``
    - ``~/.config/polybar/start_polybar.sh``
    - ``~/.config/polybar/config.ini``

## After Installation

Especially plugins and themes of some tools like Neovim and TPM are installed by running builtin
commands. All tools that are affected are listed below:

### Neovim

Run ``PackerSync`` within Neovim.

### TPM (tmux)

Run ``prefix + I``.

## Testing

All roles except ``virtualization`` can be tested using a Dockerfile. If the configuration fails,
it will be logged to Docker's internal logs. You can start a test container by building the image
and creating a container out of it.

```sh
# inside the repository
docker build . -t dotfiles
docker run -d -t dotfiles
docker logs <CONTAINER_ID>
```
