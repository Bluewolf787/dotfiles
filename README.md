```
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```

## TODO
- [ ] README
- [ ] rofi network menu
- [ ] configure ranger
- [ ] configure zathura

---
1. [Preview](#preview)
2. [Installation](#installation)
3. [Packages](#packages)
    1. [Hypr](#hypr)
    2. [Essentials](#essentials)
    3. [Drivers](#drivers)
       1. [Sound](#sound)
       2. [Graphics](#graphics)
       3. [Bluetooth](#bluetooth)
       4. [Other](#other)
    4. [Programs](#programs)
        1. [Terminal](#terminal)
        2. [Graphical](#graphical)
    5. [Fonts](#fonts)
    6. [Other](#other)
4. [Configuration](#configuration)
    1. [Git](#git)
    2. [Bluetooth](#bluetooth)
    3. [fprintd](#fprintd)
5. [File Tree](#file-tree)
---

## Preview

## Installation
Clone Repository and give execution rights:
```console
git clone https://github.com/Bluewolf787/dotfiles.git .dotfiles
cd .dotfiles
chmod +x install.sh
```
Install complete:
```console
./install.sh all
```
Install only dotfiles:
```console
./install.sh dotfiles
```


## Packages
### Hypr
- [hyprland](https://archlinux.org/packages/extra/x86_64/hyprland/) | https://github.com/hyprwm/Hyprland
- [hyprlock](https://archlinux.org/packages/extra/x86_64/hyprlock/) | https://github.com/hyprwm/hyprlock
- [hypridle](https://archlinux.org/packages/extra/x86_64/hypridle/) | https://github.com/hyprwm/hypridle
- [hyprpaper](https://archlinux.org/packages/extra/x86_64/hyprpaper/) | https://github.com/hyprwm/hyprpaper
- [hyprcursor](https://archlinux.org/packages/extra/x86_64/hyprcursor/) | https://github.com/hyprwm/hyprcursor
- [hyprpicker-git](https://aur.archlinux.org/packages/hyprpicker-git)<sup>AUR</sup> | https://github.com/hyprwm/hyprpicker
- [xdg-desktop-portal-hyprland](https://archlinux.org/packages/extra/x86_64/xdg-desktop-portal-hyprland/) | https://github.com/hyprwm/xdg-desktop-portal-hyprland
- [hyprshot](https://aur.archlinux.org/packages/hyprshot)<sup>AUR</sup> | https://github.com/Gustash/Hyprshot

### Essentials
- [git](https://archlinux.org/packages/extra/x86_64/git/) | https://git-scm.com/
- [waybar](https://archlinux.org/packages/extra/x86_64/waybar/) | https://github.com/Alexays/Waybar/
- [kitty](https://archlinux.org/packages/extra/x86_64/kitty/) | https://github.com/kovidgoyal/kitty
- [rofi-lbonn-wayland-git](https://aur.archlinux.org/packages/rofi-lbonn-wayland-git)<sup>AUR</sup> | https://github.com/lbonn/rofi
- [dunst](https://archlinux.org/packages/extra/x86_64/dunst/) | https://dunst-project.org/
- [fish](https://archlinux.org/packages/extra/x86_64/fish/) | https://fishshell.com/
- [ly](https://archlinux.org/packages/extra/x86_64/ly/) | https://github.com/fairyglade/ly
- [brightnessctl](https://archlinux.org/packages/extra/x86_64/brightnessctl/) | https://github.com/Hummer12007/brightnessctl
- [polkit-kde-agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/) | https://kde.org/plasma-desktop/


### Drivers
###### Sound:
- [pipewire](https://archlinux.org/packages/extra/x86_64/pipewire/) | https://pipewire.org
- [libpipewire](https://archlinux.org/packages/extra/x86_64/libpipewire/) | https://pipewire.org

###### Graphics:
- [amd-ucode](https://archlinux.org/packages/core/any/amd-ucode/) | https://gitlab.com/kernel-firmware/linux-firmware
- [xf86-video-amdgpu](https://archlinux.org/packages/extra/x86_64/xf86-video-amdgpu/) | https://xorg.freedesktop.org/
- [vulkan-radeon](https://archlinux.org/packages/extra/x86_64/vulkan-radeon/) | https://www.mesa3d.org/
- [mesa](https://archlinux.org/packages/extra/x86_64/mesa/) | https://www.mesa3d.org/
- [libva-mesa-driver](https://archlinux.org/packages/extra/x86_64/libva-mesa-driver/) | https://www.mesa3d.org/

###### Bluetooth:
- [bluez](https://archlinux.org/packages/extra/x86_64/bluez/) | http://www.bluez.org/
- [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/) | http://www.bluez.org/

###### Other:
- [fprintd](https://archlinux.org/packages/extra/x86_64/fprintd/) | https://fprint.freedesktop.org/
- [libfprint](https://archlinux.org/packages/extra/x86_64/libfprint/) | https://fprint.freedesktop.org/

### Programs
###### Terminal
- [neovim](https://archlinux.org/packages/extra/x86_64/neovim/) | https://neovim.io/
- [btop](https://archlinux.org/packages/extra/x86_64/btop/) | https://github.com/aristocratos/btop
- [bat](https://archlinux.org/packages/extra/x86_64/bat/) | https://github.com/sharkdp/bat
- [eza](https://archlinux.org/packages/extra/x86_64/eza/) | https://github.com/eza-community/eza
- [docker](https://archlinux.org/packages/extra/x86_64/docker/) | https://www.docker.com/

###### Graphical
- [polkit-kde-agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/) | https://kde.org/plasma-desktop/
- [nwg-look](https://archlinux.org/packages/extra/x86_64/nwg-look/) | https://github.com/nwg-piotr/nwg-look
- [thunar](https://archlinux.org/packages/extra/x86_64/thunar/) | https://docs.xfce.org/xfce/thunar/start
- [brave-bin](https://aur.archlinux.org/packages/brave-bin)<sup>AUR</sup> | https://brave.com
- [spotify-launcher](https://archlinux.org/packages/extra/x86_64/spotify-launcher/) | https://github.com/kpcyrd/spotify-launcher
- [discord](https://archlinux.org/packages/extra/x86_64/discord/) | https://discord.com
- [termius](https://aur.archlinux.org/packages/termius)<sup>AUR</sup> | https://www.termius.com/
- [docker-desktop](https://aur.archlinux.org/packages/docker-desktop)<sup>AUR</sup> | https://www.docker.com/products/docker-desktop/
- [virtualbox-host-modules-arch](https://archlinux.org/packages/extra/x86_64/virtualbox-host-modules-arch/) | https://virtualbox.org/
- [virtualbox](https://archlinux.org/packages/extra/x86_64/virtualbox/) | https://virtualbox.org/

### Fonts
- [nerd-fonts](https://archlinux.org/packages/?sort=&q=nerd+fonts&maintainer=&flagged=) | https://www.nerdfonts.com/
- [noto-fonts-emoji](https://archlinux.org/packages/extra/any/noto-fonts-emoji/) | https://archlinux.org/packages/extra/any/noto-fonts-emoji/

### Other
#### Minegrub
[Minegrub](https://github.com/Lxtharia/minegrub-theme) is a Minecraft like Grub theme by [Lxtharia](https://github.com/Lxtharia).

#### NvChad
[NvChad](https://nvchad.com/) is a Neovim config by [siduck](https://github.com/siduck).

## Configuration
### Git
**Add git log alias:**
```console
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```
Usage:
```
git lg
git lg -2 -p       # last two commit with line changes
```

**Add git status alias:**
```console
git config --global alias.ss "status -s"
```

### Bluetooth
```console
pacman -S bluez bluez-utils
```

```console
systemctl enable bluetooth.service
```
**Disable auto start:**
```console
sudo vim /etc/bluetooth/main.conf
```
Change line 321 `#AutoEnable=true` to
```
AutoEnable=false
```

### fprintd
This applies for my ThinkPad E14 Gen 4 with the device PID `0x9800`.

Verify the fingerprint reader
```console
...
Bus 003 Device 002: ID 10a5:9800 FPC FPC Sensor Controller L:0001 FW:16.26.23.14
...
```

Install [fprint](https://archlinux.org/packages/?sort=&q=fprint) package group
```console
pacman -S fprint
```

<details>
<summary>Install the official driver from <a href="https://pcsupport.lenovo.com/de/de/products/laptops-and-netbooks/thinkpad-edge-laptops/thinkpad-e14-gen-4-type-21eb-and-21ec/downloads/driver-list/component?name=Fingerprint%20Reader" >Lenovo</a> (following applies for Arch Linux)</summary>
<br>
More information <a href="https://download.lenovo.com/pccbbs/mobiles/r1slm02w.txt">here</a>
<br>
Download and extract the zip-archive then copy the files as shown below
<br>
<pre>
cd FPC_driver_linux_27.26.23.39/install_fpc
sudo cp ./libfpcbep.so /usr/lib/

cd FPC_driver_linux_libfprint/install_libfprint/
sudo cp lib/udev/rules.d/60-libfprint-2-device-fpc.rules /lib/
sudo cp usr/lib/x86_64-linux-gnu/* /usr/lib/
</pre>
</details>

Or use my script in `FPC-driver/`
```console
cd FPC-driver
chmod +x install.sh
./install.sh
```

Set up for hyprlock `/etc/pam.d/hyprlock`
```console
# PAM configuration file for hyprlock
# the 'login' configuration file (see /etc/pam.d/login)

auth	    sufficient  pam_fprintd.so
auth        include     login
```

Set up for ly `/etc/pam.d/ly`
```console
#%PAM-1.0

auth 	   sufficient   pam_unix.so try_first_pass likeauth nullok
auth	   sufficient   pam_fprintd.so
auth       include      login
account    include      login
password   include      login
session    include      login
```

## File Tree
<details><summary>:open_file_folder: .dotfiles</summary>
    <br>
    <details><summary>:open_file_folder: .config/</summary>
        <br>
        <details><summary>:open_file_folder: bat/</summary>
            <br>
            <details><summary>:open_file_folder: themes/</summary>
                <br>
                :page_facing_up: Everforest-Dark.tmTheme
            </details>
            <br>
            :page_facing_up: config
        </details>
        <details><summary>:open_file_folder: brave/</summary>
            <br>
            <details><summary>:open_file_folder: icons</summary>
                <br>
                :sunrise: favicon.png
            </details>
            <br>
            :page_facing_up: index.html
            :page_facing_up: JetBrainsMonoNerdFont.ttf
            :page_facing_up: style.css
            :page_facing_up: time.js
        </details>
        <details><summary>:open_file_folder: btop/</summary>
            <br>
            <details><summary>:open_file_folder: themes/</summary>
                <br>
                :page_facing_up: purple.theme
            </details>
            <br>
            :page_facing_up: btop.conf
        </details>
        <details><summary>:open_file_folder: dunst/</summary>
            <br>
            :page_facing_up: dunstrc
        </details>
        <details><summary>:open_file_folder: fish/</summary>
            <br>
            :page_facing_up: config.fish
        </details>
        <details><summary>:open_file_folder: gtk-3.0/</summary>
            <br>
            :page_facing_up: settings.ini
        </details>
        <details><summary>:open_file_folder: hypr/</summary>
            <br>
            <details><summary>:open_file_folder: wallpapers/</summary>
                <br>
            </details>
            <br>
            :page_facing_up: execs.conf
            :page_facing_up: hypridle.conf
            :page_facing_up: hyprland.conf
            :page_facing_up: hyprlock.conf
            :page_facing_up: hyprpaper.conf
            :page_facing_up: keybinds.conf
            :page_facing_up: windowrules.conf
        </details>
        <details><summary>:open_file_folder: kitty/</summary>
            <br>
            :page_facing_up: kitty.conf
        </details>
        <details><summary>:open_file_folder: neofetch/</summary>
            <br>
            :page_facing_up: arch.txt
            :page_facing_up: config.conf
        </details>
        <details><summary>:open_file_folder: ranger/</summary>
            <br>
            :page_facing_up: rc.conf
        </details>
        <details><summary>:open_file_folder: rofi/</summary>
            <br>
            <details><summary>:open_file_folder: bin/</summary>
                <br>
                :page_facing_up: bluetooth
                :page_facing_up: launcher
                :page_facing_up: powermenu
                :page_facing_up: quicklinks
                :page_facing_up: screenshot
                :page_facing_up: sound
            </details>
            <br>
            <details><summary>:open_file_folder: themes/</summary>
                <br>
                :page_facing_up: applet.rasi
                :page_facing_up: colors.rasi
                :page_facing_up: launcher.rasi
                :page_facing_up: powermenu.rasi
            </details>
        </details>
        <details><summary>:open_file_folder: waybar/</summary>
            <br>
            :page_facing_up: config.jsonc
            :page_facing_up: style.css
            :page_facing_up: waybar-colors.css
        </details>
        <details><summary>:open_file_folder: xsettingsd/</summary>
            <br>
            :page_facing_up: xsettingsd.conf
        </details>
    </details>
    <details><summary>:open_file_folder: .icons/</summary>
        <br>
        <details><summary>:open_file_folder: default/</summary>
            <br>
            :page_facing_up: index.theme
        </details>
        <details><summary>:open_file_folder: Future-dark-cursors/</summary>
            <br>
            ...
        </details>
        <details><summary>:open_file_folder: Papirus</summary>
            <br>
            ...
        </details>
        <details><summary>:open_file_folder: Zafiro-Nord-Dark-Black</summary>
            <br>
            ...
        </details>
    </details>
    <details><summary>:open_file_folder: .local/</summary>
        <br>
        <details><summary>:open_file_folder: scripts/</summary>
            <br>
            :page_facing_up: checkupdate
            :page_facing_up: terminal
        </details>
    </details>
    <details><summary>:open_file_folder: .themes/</summary>
        <br>
        <details><summary>:open_file_folder: Abyss-INK</summary>
            <br>
            ...
        </details>
        <details><summary>:open_file_folder: Everforest-Dark-BL-LB</summary>
            <br>
            ...
        </details>
        <details><summary>:open_file_folder: Material-Black-Plum/</summary>
            <br>
            ...
        </details>
    </details>
    <details><summary>:open_file_folder: FPC-driver</summary>
        <br>
        <details><summary>:open_file_folder: FPC_driver_linux_27.26.23.39</summary>
            <br>
            :page_facing_up: libfpcbep.so
        </details>
        <details><summary>:open_file_folder: FPC_driver_linux_libfprint</summary>
            <br>
            :page_facing_up: 60-libfprint-2-device-fpc.rules
            :page_facing_up: libfprint-2.so
            :page_facing_up: libfprint-2.so.2
            :page_facing_up: libfprint-2.so.2.0.0
        </details>
        <br>
        :page_facing_up: install.sh
    </details>
    :page_facing_up: .gtkrc-2.0
</details>
