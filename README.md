# Dotfiles

This repository can be used to create a fully working development environment à la MapManagement
style. I'm currently using Arch and i3 as my foundation.
[My Arch guide](https://github.com/MapManagement/dotfiles/blob/master/guides/arch_guide.md) explains the
whole installation. To easen the process of setting up the machine after the base installation, I
created an Ansible playbook to automate the installation and following configuration/customization
of every package I need.

## Installation

1. Clone this repo onto your fresh installation of an Arch based distro. To avoid any problems, I
recommend to do it on an empty home directory.
2. Make sure that Python and pip is installed.
3. Afterwards you need to adjust some files to your specific setup:
    - i3 monitor configuration (only for dual monitor setups)
        - edit ``dotfiles/roles/i3/files/multi_monitor_config`` and change the output devices
        ```
        set MAIN_OUTPUT DP-1
        set SECOND_OUTPUT HDMI-1
        ```
        - also adjust the ``set_monitors.sh`` script the same way (change resolution, refresh rate...)
    - Polybar monitor configuration (only for dual monitor setups)
        - edit ``dotfiles/roles/polybar/files/config_multi_monitor.ini`` and change the output devices
        ```
        [display]
        main = DP-1
        secon = HDMI-1
        ```
4. Once you edited these files, you can start the installation process. Simply just run the
``setup_machine.py`` Python script. You'll have to answer some questions which control a few
tasks of the playbook.
5. If you didn't run into any errors, you should restart now. Enjoy your new machine :)
