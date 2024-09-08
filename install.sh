#!/bin/bash

# ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
# ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
# ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
# ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
# ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
# ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝


dots_path = ~/.dotfiles/
set_dots_path() {
    dots_path = "$PWD"
}

# -----------------------------------------------------
# Helper functions to modify a file
# -----------------------------------------------------
modify_file() {
    local file_line="$1"
    local modified_content="$2"
    local original="$3"
    local tmp_file="modified_tmp"

    local current_line=1
    cd /tmp
    while IFS= read -r line; do
      if [ "$current_line" -eq "$file_line" ]; then
        echo "$modified_content" >> "$tmp_file"
      else
        echo "$line" >> "$tmp_file"
      fi
      ((current_line++))
    done < "$original"

    mv -v "$tmp_file" "$original"
    cd dots_path
}

file_insertion() {
    local line_num="$1"
    local new_line="$2"
    local file="$3"
    
    cd /tmp
    head -n "$line_num" "$file" > tmp_head.txt
    tail -n +$((line_num + 1)) "$file" > tmp_tail.txt

    cat tmp_head.txt > "$file"
    echo "$new_line" >> "$file"
    cat tmp_tail >> "$file"
    
    rm tmp_head.txt tmp_tail.txt
    
    cd dots_path
}

# -----------------------------------------------------
# Link dotfiles
# -----------------------------------------------------
link_dotfiles() {
    echo '
    LINK DOTFILES
    '
    
    ln -sfv ~/.dotfiles/.config/hypr ~/.config/
    ln -sfv ~/.dotfiles/.config/waybar ~/.config/
    ln -sfv ~/.dotfiles/.config/rofi ~/.config/
    ln -sfv ~/.dotfiles/.config/dunst ~/.config/
    ln -sfv ~/.dotfiles/.config/kitty ~/.config/
    ln -sfv ~/.dotfiles/.config/btop ~/.config/
    ln -sfv ~/.dotfiles/.config/bat ~/.config/
    ln -sfv ~/.dotfiles/.config/brave ~/.config/
    ln -sfv ~/.dotfiles/.config/hypr ~/.config/
    ln -sfv ~/.dotfiles/.local/scripts ~/.local/
    ln -sfv ~/.dotfiles/.thmes ~/
    ln -sfv ~/.dotfiles/.icons ~/

    echo '
    DOTFILES LINKING COMPLETE!
    '
}

# -----------------------------------------------------
# Install yay
# -----------------------------------------------------
install_yay() {
    echo '
    INSTALL YAY
    '
    
    sudo pacman -S --needed git base-devel
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay/
    makepkg -si
    cd dots_path

    echo '
    YAY INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Install pacman packages
# -----------------------------------------------------
install_pacman_pkg() {
    echo '
    INSTALL PACMAN PACKAGES
    '

    sudo pacman -S hyprland hyprlock hypridle hyprpaper xdg-desktop-portal-hyprland ly waybar kitty dunst fish polkit-kde-agent pacman-contrib neovim btop bat eza amd-ucode xf86-video-amdgpu vulkan-radeon mesa libva-mesa-driver pipewire libpipewire bluez bluez-utils brightnessctl nerd-fonts noto-fonts-emoji nwg-look thunar spotify-launcher discord docker virtualbox-host-modules-arch virtualbox dart jdk17-openjdk jdk-openjdk

    echo '
    PACMAN PACKAGES INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Install AUR packages with yay
# -----------------------------------------------------
install_aur_pkg() {
    echo '
    INSTALL AUR PACKAGES WITH YAY
    '

    yay -S hyprpicker-git hyprshot rofi-lbonn-wayland-git brave-bin termius docker-desktop jetbrains-toolbox

    echo '
    YAY PACKAGES INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Install minegrub
# -----------------------------------------------------
install_minegrub() {
    echo '
    INSTALL GRUB THEME MINEGRUB
    '
    
    cd /tmp
    git clone https://github.com/Lxtharia/minegrub-theme.git
    cd minegrub_theme/
    # Set background
    cp -fv background_options/1.19\ -\ \[The\ Wild\ Update\].png ./minegrub/background.png
    # Copy theme to grub directory
    cp -ruv ./minegrub /boot/grub/themes/
    
    # Load systemd service
    cp minegrub-update.service /etc/systemd/system
    sudo systemctl enable minegrub-update.service

    # Change grub config to use the theme
    modify_file "47" "GRUB_THEME=\"/boot/grub/themes/minegrub/theme.txt\"" "/etc/default/grub"

    cd dots_path

    echo '
    GRUB THEME INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Install Flutter
# -----------------------------------------------------
install_flutter() {
    echo '
    INSTALL FLUTTER
    '

    cd /tmp
    wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz
    mkdir /usr/bin/flutter
    tar -xvf flutter_linux_3.19.6-stable.tar.xz -C /usr/bin/
    cd dots_path

    echo '
    FLUTTER INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Install fishmarks
# -----------------------------------------------------
install_fishmarks() {
    echo '
    INSTALL FISHMARKS
    '

    cd ~
    git clone https://github.com/techwizrd/fishmarks .fishmarks
    cd dots_path

    echo '
    FISHMARKS INSTALLATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure NVim
# -----------------------------------------------------
configure_nvim() {
    echo '
    CONFIGURE NVIM
    '

    git clone https://github.com/NvChad/starter ~/.config/nvim
    # kitty nvim &

    echo '
    NVIM CONFIGURATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure bat
# -----------------------------------------------------
configure_bat() {
    echo '
    CONFIGURE BAT
    '

    bat cache --build

    echo '
    BAT CONFIGURATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure git config
# -----------------------------------------------------
configure_git() {
    echo '
    CONFIGURE GIT
    '

    # Set user name
    echo "Enter name: "
    read name
    git config --global user.name "$name"
    
    # Set user email
    echo "Enter E-Mail: "
    read email
    git config --global user.email "$email"
    echo "  -> Git user data set!"
    
    # Set default branch name
    git config --global init.defaultBranch main
    echo "  -> Git default branch name set to main" 

    # Set aliases
    echo "Set git aliases"
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    echo "  -> Git aliases set!"
    
    echo '
    GIT CONFIGURATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure bluetooth
# -----------------------------------------------------
configure_bluetooth() {
    echo '
    CONFIGURE BLUETOOTH
    '
    
    modify_file "321" "AutoEnable=false" "/etc/bluetooth/main.conf"
    
    sudo systemctl enable bluetooth.service

    echo '
    BLUETOOTH CONFIGURATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure FPC driver
# -----------------------------------------------------
configure_fpc_driver() {
    echo '
    CONFIGURE FPC DRIVER
    '

    cd FPC-driver/
    chmod +x install.sh
    ./install.sh
    cd ../

    # Modify PAM files - https://wiki.archlinux.org/title/PAM#Configuration
    # hyprlock
    file_insertion "3" "auth        sufficient  pam_fprintd.so" "/etc/pam.d/hyprlock"
    # ly
    file_insertion "2" "auth       sufficient   pam_unix.so try_first_pass likeauth nullok\nauth       sufficient   pam_fprintd.so" "/etc/pam.d/ly"

    echo '
    FPC DRIVER CONFIGURATION COMPLETE!
    '
}

# -----------------------------------------------------
# Configure power button behavior
# -----------------------------------------------------
configure_power_button() {
    echo '
    CONFIGURE POWER BUTTON BEHAVIOR
    '

    # Change logind.conf - https://wiki.archlinux.org/title/Power_management#ACPI_events
    modify_file "27" "HandlePowerKey=ignore" "/etc/systemd/logind.conf"
    modify_file "28" "HandlePowerKeyLongPress=poweroff" "/etc/systemd/logind.conf"

    echo '
    POWER BUTTON BEHAVIOR COMPLETE!
    '
}

# -----------------------------------------------------
# Prompt reboot
# -----------------------------------------------------
prompt_reboot() {
    echo '
Would you like to reboot?
    
    - (yes/no):
    '

    read answer

    if [[ "$answer" == "yes" ]] || [[ "$answer" == "y" ]]; then
        sudo reboot now
    else
        echo '
        Bye!'
        exit 0
    fi
}

# -----------------------------------------------------
# Get install variante
# -----------------------------------------------------
prompt_install() {
    echo 'DOTFILES AND SYSTEM INSTALL
    
    Choose install mode:
        full            Link dotfiles, install packages & do configurations
        dotfiles        Only link dotfiles
        yay             Install yay
        pacman          Install pacman packages
        aur             Install AUR packages
        minegrub        Install Minegrub
        flutter         Install Flutter
        fishmarks       Install fishmarks
        git             Configure git           
        bluetooth       Configure bluetooth
        fpc             Configure FPC driver for device 0x9800
        powerbtn        Configure power button behavior
    '
    
    read mode
    
    case $mode in
        "full")
            link_dotfiles
            install_yay
            install_pacman_pkg
            install_aur_pkg
            install_minegrub
            install_flutter
            install_fishmarks
            configure_bat
            configure_git
            configure_bluetooth
            configure_fpc_driver
            configure_power_button
            ;;
        "dotfiles")
            link_dotfiles
            ;;
        "yay")
            install_yay
            ;;
        "pacman")
            install_pacman_pkg
            ;;
        "aur")
            install_aur_pkg
            ;;
        "minegrub")
            install_minegrub
            ;;
        "flutter")
            install_flutter
            ;;
        "fishmarks")
            install_fishmarks
            ;;
        "bat")
            configure_bat
            ;;
        "git")
            configure_git
            ;;
        "bluetooth")
            configure_bluetooth
            ;;
        "fpc")
            configure_fpc_driver
            ;;
        "powerbtn")
            configure_power_button
            ;;
        *)
            echo "Error: $mode is not valid."
            exit 0
            ;;
    esac

    prompt_reboot
}

if [ "$EUID" != 0 ]; then
    echo "You must run this script as root!"
    exit 0
else
    set_dots_path
    prompt_install
fi

## TODO
# add posibility for start parameters
# add more modes
