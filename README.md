# dotfiles
My archlinux-hyprland dotfiles
## sysytem instalation

### 1.
```shell
iwctl

tation wlan0 connect SSID

ping google.com

pacman -Sy archlinux-keyring archinstall

========================================

lsblk

mkfs.fat -F32 /dev/nvme0n1p6
mkfs.ext4 /dev/nvme0n1p7
mkfs.ext4 /dev/nvme0n1p8

mount /dev/nvme0n1p7 /mnt

mkdir /mnt/boot
mkdir /mnt/home

mount /dev/nvme0n1p6 /mnt/boot
mount /dev/nvme0n1p8 /mnt/home

========================================

archinstall
```

packages:
> vim git os-prober firefox

```shell
vim /etc/default/grub

grub-mkconfig -o /boot/grub/grub.cfg
```

### 2.
```shell
su

grub-mkconfig -o /boot/grub/grub.cfg
```

```shell
nmcli device wifi connect SSID password PASSWORD
```

```shell
sudo pacman -Sy ttf-font-awesome otf-font-awesome ttf-jetbrains-mono

sudo pacman -Sy pulseaudio pulseaudio-bluetooth bluez bluez-utils blueman pavucontrol 
                nwg-look cliphist swww waybar rofi thunar zsh zoxide fuse zip unzip
```

```shell
git clone https://github.com/tyqFaradey/dotfiles.git 
```

```shell
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
```shell
yay -S hyprshot hyprpicker cava snapd
yay -S visual-studio-code-bin
```

```shell
sudo systemctl unmask snapd.service
sudo systemctl enable snapd.service
sudo systemctl start snapd.service
```
