# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝

# -----------------------------------------------------
# Disable Greeting
# -----------------------------------------------------
set -g fish_greeting

if status is-login
  if test (tty) = /dev/tty1
    Hyprland
  end
end

# -----------------------------------------------------
# Alias
# -----------------------------------------------------
alias ls "exa --icons"
alias la "ls -a"
alias ll "exa -l -g --icons"
alias lla "ll -a"

alias bon "bluetoothctl power on"
alias boff "bluetoothctl power off"
alias bc "bluetoothctl connect 14:3F:A6:A7:D9:81"
alias be "systemctl enable bluetooth"
alias bd "systemctl disable bluetooth"

alias clock "tty-clock -c -C 2"

alias note "nvim ~/Dokumente/notes.txt"

alias update "sudo pacman -Syu && yay -Syu"
alias autoremove "sudo pacman -Qdtq | sudo pacman -Rs -"
alias autoclean "sudo pacman -Sc"

alias nitch "~/.config/nitch/nitch"

# -----------------------------------------------------
# Fishmarks
# -----------------------------------------------------
source ~/.fishmarks/marks.fish

# -----------------------------------------------------
# PATH
# -----------------------------------------------------
export PATH="/opt/flutter/bin/:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export UMLET_HOME="$HOME/bin/Umlet/"
export PATH="$PATH:$UMLET_HOME"

