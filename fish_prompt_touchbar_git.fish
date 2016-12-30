function fish_prompt_touchbar_git --on-event fish_prompt
    set -q TOUCHBAR_GIT_KEY ; or return 1

    if set branch_name (git_branch_name)
        set -l git_ahead (git_ahead \u2191 \u2193 \u2193\u2191)
        if git_is_touched
          set git_dirty ±
        end
        touchbar_set F$TOUCHBAR_GIT_KEY \u2325 $branch_name $git_ahead $git_dirty
    else
        touchbar_set F$TOUCHBAR_GIT_KEY F$TOUCHBAR_GIT_KEY
    end
end
