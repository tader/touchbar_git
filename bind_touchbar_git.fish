function bind_touchbar_git --on-event fish_prompt
    set -q TOUCHBAR_GIT_KEY ; or return 1

    bind -k f$TOUCHBAR_GIT_KEY 'echo ; and git branch -v ; commandline -f repaint'
end
