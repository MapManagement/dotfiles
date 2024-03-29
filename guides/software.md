# Software

## Development

- [Neovim](https://github.com/neovim/neovim)
- [zsh](https://github.com/zsh-users/zsh)
- [DBeaver](https://github.com/dbeaver/dbeaver)
- [tmux](https://github.com/tmux/tmux)
- [Alacritty](https://github.com/alacritty/alacritty)
- [GitHub CLI](https://cli.github.com/manual/)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [tmux](https://github.com/tmux/tmux)

## Languages / Frameworks
- [.NET](https://github.com/dotnet/core)
    - [Mono](https://github.com/mono/mono)
- [Python](https://www.python.org/)
    - [virtualenv](https://github.com/pypa/virtualenv)
    - [pip](https://github.com/pypa/pip)
- [Rust](https://github.com/rust-lang/rust)
- [OpenJDK](https://github.com/openjdk/jdk)
- [Node.js](https://github.com/nodejs/node)

## Customization

- [Polybar](https://github.com/polybar/polybar)
- [Rofi](https://github.com/davatorium/rofi)
- [Feh](https://github.com/derf/feh)
- [picom](https://github.com/yshui/picom)

## Daily work

- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Chromium](https://github.com/chromium/chromium)
- [LibreOffice](https://github.com/LibreOffice/core)
- [Okular](https://github.com/KDE/okular)
- [Thunar](https://github.com/xfce-mirror/thunar)
- [KeePassXC](https://github.com/keepassxreboot/keepassxc)
- [Discord](https://discord.com/)
- [Spotify](https://www.spotify.com)
- [htop](https://github.com/htop-dev/htop)
- [flameshot](https://github.com/flameshot-org/flameshot)

## Virtualization

- [Virtual Machine Manager](https://github.com/virt-manager/virt-manager)
- [QEMU](https://github.com/qemu/QEMU)
- [Libvirt](https://github.com/libvirt/libvirt)
- [OVMF](https://github.com/tianocore/edk2/tree/master/OvmfPkg)

## Customization / Plugins

- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    - [powerlevel10k](https://github.com/romkatv/powerlevel10k)
    - [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [catppuccin-rofi](https://github.com/catppuccin/rofi/tree/main/deathemonic)

## System
- [ALSA](https://alsa-project.org/wiki/Main_Page)
    - [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/)
    - [PulseAudio Volume Control](https://freedesktop.org/software/pulseaudio/pavucontrol/)
- 

## VFIO

My main machine uses vfio to pass a graphics card to specific virtual machines. Thus I can play
games flawlessly in a Windows environment. Using Ansible, my configuration of setting up vfio
on an Arch based system, didn't seem to be that easy. Therefore I decided to do this manually
everytime I have to install a fresh Arch installation on my desktop machine. My guide can be found
[here](https://github.com/MapManagement/gpu-passthrough).

