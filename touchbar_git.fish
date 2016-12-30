function touchbar_git
    if set match (string match -r 'F(\d+)' $argv[1])
        set -g TOUCHBAR_GIT_KEY $match[2]
    else
        echo "usage: touchbar_git <Fn KEY>"
        echo "  eg.: touchbar_git F2"
        return 1
    end

    touchbar # make sure it is initialized

    bind_touchbar_git
    fish_prompt_touchbar_git
end
