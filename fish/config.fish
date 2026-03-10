if status is-interactive
    # Commands to run in interactive sessions can go here
end

bind \ez undo
bind \cz 'fg 2>/dev/null; commandline -f repaint'
bind alt-r 'reset; commandline -f repaint'

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/mp2720/.ghcup/bin # ghcup-env

set -gx PATH $HOME/conf/bin/ $PATH

set VIRTUAL_ENV_DISABLE_PROMPT 1
source ~/.venv/bin/activate.fish

set -gx DOTNET_CLI_TELEMETRY_OPTOUT 1

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
