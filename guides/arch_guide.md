# Arch Installation Guide

## Base System

Set german keyboard layout:

```sh
loadkeys de-latin1
```

Set datetime:

```sh
timedatectl set-ntp true
```

Partitioning disk with ``cfdisk``:

- check disks with ``fdisk -l``
- open disk which will store your system with ``cfdisk /dev/your_disk``
- create swap partition (``Linux swap``)
- create EFI partition (``EFI System``) with at least 300 MiB
- create filesystem partition (``Linux filesystem``)
- write your changes to the disk
- check your disk with ``fdisk -l``

Format partitions:

```sh
mkfs.ext4 /dev/filesystem_partition
mkfs.fat -F 32 /dev/efi_partition
mkswap /dev/swap_partition
```

Mount parititons:

```sh
mount /dev/filesystem_parition /mnt
mkdir /mnt/efi
mount /dev/efi_partition /mnt/efi
swapon /dev/swap_partition
```

Install base packages:

```sh
pacstrap -i /mnt base linux linux-firmware vim neovim
```

Base system configuration:

```sh
genfstab -U /mnt >> /mnt/etc/fstab
```

## Configure new system

Root into new system:

```sh
arch-chroot /mnt                    
```

Change timezone:

```sh
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
```

Set system clock:

```sh
hwclock --systohc
```

Set hostname:

```sh
echo your_hostname > /etc/hostname
```

Set system language:

```sh
echo LANG=en_US.UTF-8 > /etc/locale.conf
```

Set locales -> uncomment ``en_US.UTF-8 UTF-8``:

```sh
vim /etc/locale.gen
locale-gen
```

Set console keyboard layout:

```sh
echo KEYMAP=de-latin1 > /etc/vconsole.conf
```

Edit hosts:

- open ``/etc/hosts``
- add following lines:

```sh
#/etc/hosts

127.0.0.1   localhost
::1         localhost
127.0.1.1   your_hostname.localdomain your_hostname
```

Regenerate the initramfs

```sh
mkinitcpio -P
```

Set new root password:

```sh
passwd
```

Install and enable networkmanager:

```sh
pacman -S networkmanager
systemctl enable NetworkManager
```

Install and configure GRUB:

```sh
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --bootloader=GRUB --efi-directory=/efi --removable
grub-mkconfig -o /boot/grub/grub.cfg
```

## Install additional packages

Install SDDM:

```sh
pacman -S sddm
systemctl enable sddm
```

Install i3:

```sh
pacman -S i3-gaps i3blocks i3lock
```

Set X11-Keymap:
```sh
localectl set-x11-keymap de
```

Install git, sudo and Alacritty:

```sh
pacman -S git sudo alacritty
```

Grant root access to other users:

- edit ``/etc/sudoers``
- uncomment following line

```sh
#%wheel ALL=(ALL) ALL
```

Create new user:

```sh
useradd -G wheel -m your_username
passwd your_username
```

Install yay (AUR package manager):

```sh
mkdir /opt/yay
cd /opt
git clone https://aur.archlinux.org/yay.git
cd /yay
makepkg -si
```
