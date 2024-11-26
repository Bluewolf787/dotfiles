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
set -g fish_color_autosuggestion D3C6AA
set -g fish_color_command 7FBBB3
set -g fish_color_param D699B6

function fish_prompt
    set -l last_status $status
    set -l white (set_color -o D3C6AA)
    set -l cyan (set_color -o 83C092)
    set -l yellow (set_color -o DBBC7F)
    set -g red (set_color -o E67E80)
    set -g blue (set_color -o 7FBBB3)
    set -l green (set_color -o A7C080)
    set -g normal (set_color D3C6AA)

    set -l ahead (_git_ahead)
    set -g whitespace ' '

    if test $last_status = 0
        set initial_indicator "$green "
        set status_indicator "$green❯"
    else
        set initial_indicator "$red✖ $last_status"
        set status_indicator "$green❯"
    end
    set -l cwd $green(basename (prompt_pwd))

    if [ (_git_branch_name) ]

        if test (_git_branch_name) = main
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($red$git_branch$normal)"
        else
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($blue$git_branch$normal)"
        end

        if [ (_is_git_dirty) ]
            set -l dirty "$yellow ✗"
            set git_info "$git_info$dirty"
        end
    end

    # Notify if a command took more than 5 minutes
    if [ "$CMD_DURATION" -gt 300000 ]
        echo The last command took (math "$CMD_DURATION/1000") seconds.
    end

    echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
end

function _git_ahead
    set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2>/dev/null)
    if [ $status != 0 ]
        return
    end
    set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
    set -l ahead (count (for arg in $commits; echo $arg; end | grep -v '^<'))
    switch "$ahead $behind"
        case '' # no upstream
        case '0 0' # equal to upstream
            return
        case '* 0' # ahead of upstream
            echo "$blue↑$normal_c$ahead$whitespace"
        case '0 *' # behind upstream
            echo "$red↓$normal_c$behind$whitespace"
        case '*' # diverged from upstream
            echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
    end
end

function _git_branch_name
    echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
    echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end

# Functions needed for !! and !$
function __history_previous_command
    switch (commandline -t)
        case "!"
            commandline -t $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function __history_previous_command_arguments
    switch (commandline -t)
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

# The bindings for !! and !$
if [ "$fish_key_bindings" = fish_vi_key_bindings ]
    bind -Minsert ! __history_previous_command
    bind -Minsert '$' __history_previous_command_arguments
else
    bind ! __history_previous_command
    bind '$' __history_previous_command_arguments
end

# -----------------------------------------------------
# Alias
# -----------------------------------------------------
alias ls "eza -F --icons --group-directories-first"
alias la "ls -a"
alias ll "eza -lahF --icons --group-directories-first --git"
alias lr "eza -RF --icons --group-directories-first"
alias lra "eza -aRF --icons --group-directories-first"
alias lt "eza -aTF --icons --group-directories-first"

alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -iv"

alias copy "rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1"
alias move " rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files"

alias df "df -h"
alias du "du -h"

alias update "sudo pacman -Syu && yay -Syu && pkill -SIGRTMIN+8 waybar"
alias autoremove 'set orphans $(pacman -Qdtq); [ -z "$orphans" ] && echo "There are no orphaned packages" || sudo pacman -Rsc $orphans'
alias autoclean "sudo pacman -Sc && yay -Sc"
alias pkglist "pacman -Qs --color=always | less -R"

alias ssh "kitty +kitten ssh"

alias cd. "cd .."
alias cd.2 "cd ../.."
alias cd.3 "cd ../../.."
alias cd.4 "cd ../../../.."
alias cd.5 "cd ../../../../.."

alias clock "tty-clock -c -C 2"
alias weather "curl wttr.in/Rostock | head -n -1"
alias cal3 "cal -3"

alias note "nvim ~/Dokumente/notes.txt"

alias bon "bluetoothctl power on"
alias boff "bluetoothctl power off"
alias bc "bluetoothctl connect 14:3F:A6:A7:D9:81"
alias be "systemctl enable bluetooth"
alias bd "systemctl disable bluetooth"

alias won "nmcli radio wifi on"
alias woff "nmcli radio wifi off"

alias ipv4 "ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1"
alias ipv6 "ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n '2p'"

alias error "journalctl -b -p err"

# -----------------------------------------------------
# Functions
# -----------------------------------------------------
function cl
    if test -d $argv[1]
        cd $argv[1]
        ll
    else
        echo "cl: The directory '$argv[1]' does not exist"
    end
end

function jdk
    if test (count $argv) -eq 0
        archlinux-java status
    else
        sudo archlinux-java set java-$argv[1]-openjdk
    end
end

# -----------------------------------------------------
# Fishmarks
# -----------------------------------------------------
source ~/.fishmarks/marks.fish

# -----------------------------------------------------
# asdf
# -----------------------------------------------------
source /opt/asdf-vm/asdf.fish

# -----------------------------------------------------
# ENVIRONMENT
# -----------------------------------------------------
export PATH="/usr/bin/flutter/bin/:$PATH"
export PATH="$PATH:$HOME/.local/scripts"

if string match -q '*hyprland*' (echo $XDG_SESSION_DESKTOP)
    set -x XDG_CURRENT_DESKTOP Hyprland
end
