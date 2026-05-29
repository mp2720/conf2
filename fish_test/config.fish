export XCURSOR_SIZE=10

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

export EDITOR=vim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

setxkbmap -layout us,ru -option grp:caps_toggle

bind \ez undo
bind \cz 'fg 2>/dev/null; commandline -f repaint'
bind alt-r 'reset; commandline -f repaint'

set VIRTUAL_ENV_DISABLE_PROMPT 1
source ~/.venv/bin/activate.fish
