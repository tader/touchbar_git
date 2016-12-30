# Use `fish_key_reader` to find key codes

function bind_touchbar_git
    set -q TOUCHBAR_GIT_KEY ; or return 1

    bind -k f$TOUCHBAR_GIT_KEY 'echo ; and git branch -v ; commandline -f repaint'
end
