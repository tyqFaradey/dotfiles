```Bash
iwctl station wlan0 connect <net_name>
```

```Bash
cfdisk /dev/<disk>
```

```Bash
mkfs.fat -F32 /dev/<boot>
```

```Bash
mkfs.ext4 /dev/<root>
```

```Bash
mkfs.ext4 /dev/<home>
```

```Bash
mount --mkdir /dev/<root> /mnt
```

```Bash
mount --mkdir /dev/<boot> /mnt/boot
```

```Bash
mount --mkdir /dev/<home> /mnt/home
```

```Bash
pacstrap -K /mnt base linux linux-firmware base-devel nano vim networkmanager sudo
```

```Bash
genfstab -U /mnt >> /mnt/etc/fstab
```

```Bash
arch-chroot /mnt
```

```Bash
ln -sf /usr/share/zoneinfo/<Регион>/<Город> /etc/localtime
hwclock --systohc
```

edit `/etc/locale.gen`

```
locale-gen
```

make `/etc/hostname`

```Bash
passwd
```

```Bash
useradd -m -G wheel <user_name>
passwd <user_name>
```

```Bash
EDITOR=vim visudo
```

uncomment `%wheel ALL=(ALL:ALL) ALL`

```Bash
systemctl enable NetworkManager
```

```Bash
pacman -Syu grub efibootmgr os-prober fuse3
```

edit `/etc/default/grub`
uncomment `GRUB_DISABLE_OS_PROBER=false`

```Bash
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
```

```Bash
grub-mkconfig -o /boot/grub/grub.cfg
```

- AMD:
  ```Bash
  pacman -S mesa vulkan-radeon
  ```
- Intel:
  ```Bash
  pacman -S mesa vulkan-intel
  ```

```Bash
pacman -S hyprland kitty polkit-kde-agent gtk3 gtk4 qt5-wayland qt6-wayland sddm  git stow tree awww waybar rofi btop wireguard-tools

pacman -S ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk ttf-nerd-fonts-symbols ttf-font-awesome

pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
```

```Bash
systemctl enable sddm
```

```Bash
exit
umount -R /mnt
reboot
```

#########################

```Bash
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git .yay && cd .yay && makepkg -si
```

sudo pacman -Syu sof-firmware alsa-firmware

sudo pacman -S bluez bluez-utils blueman
sudo pacman -S hyprpicker hyprshot

sudo pacman -S zed zip unzip chafa fzf zoxide zsh sass

sudo pacman -S chromium telegram-desktop obsidian steam discord drawio-desktop

yay -S amneziavpn-bin zen-browser qimgv

gsettings set org.gnome.desktop.interface cursor-theme 'ИМЯ_ТЕМЫ'
gsettings set org.gnome.desktop.interface cursor-size 24

sudo cp -r ~/.icons/ИМЯ_ТЕМЫ /usr/share/icons/
