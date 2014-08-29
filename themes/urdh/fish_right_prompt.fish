# urdh prompt theme, by Simon Sigurdhsson <http://github.com/urdh/>
function fish_right_prompt --description 'Write out the right-hand prompt'
    set -l ___vcs (vcprompt -f '%n')
    if test -n "$___vcs"
        switch $___vcs
            case 'git*'
                set -l __fish_git_prompt_showstashstate 'yes'
                set -l __fish_git_prompt_showdirtystate 'yes'
                set -l __fish_git_prompt_showuntrackedfiles 'yes'
                set -l __fish_git_prompt_show_informative_status 'yes'
                set -l __fish_git_prompt_showupstream 'informative git'

                set -g ___fish_git_prompt_color_cleanstate (set_color --bold green)
                set -g ___fish_git_prompt_color_stagedstate (set_color --bold green)
                set -g ___fish_git_prompt_color_invalidstate (set_color --bold red)
                set -g ___fish_git_prompt_color_dirtystate (set_color --bold yellow)
                set -g ___fish_git_prompt_color_untrackedfiles (set_color --bold red)
                set -g ___fish_git_prompt_color_stashstate (set_color --bold cyan)

                set -g ___fish_git_prompt_char_upstream_equal ''
                set -g ___fish_git_prompt_char_upstream_ahead '⬘'
                set -g ___fish_git_prompt_char_upstream_behind '⬙'
                set -g ___fish_git_prompt_char_upstream_diverged '⬥'
                set -g ___fish_git_prompt_char_stateseparator ''
                set -g ___fish_git_prompt_char_dirtystate '●'
                set -g ___fish_git_prompt_char_invalidstate '⦻'
                set -g ___fish_git_prompt_char_stagedstate '●'
                set -g ___fish_git_prompt_char_untrackedfiles '○'
                set -g ___fish_git_prompt_char_cleanstate '✔ '
                set -g ___fish_git_prompt_char_stashstate '▣'

                set -g __fish_git_prompt_hide_dirtystate 'yes'
                set -g __fish_git_prompt_hide_invalidstate 'yes'
                set -g __fish_git_prompt_hide_stagedstate 'yes'
                set -g __fish_git_prompt_hide_untrackedfiles 'yes'

                set -l i (__fish_git_prompt_informative_status)
                set -l s
                if test -r (command git rev-parse --git-dir)/refs/stash
				            set s $___fish_git_prompt_char_stashstate
                    set s "$___fish_git_prompt_color_stashstate$s"
                    set s "$s$___fish_git_prompt_color_stashstate_done"
			          end
                set -l u (__fish_git_prompt_show_upstream)

                printf '%s%s%s%s%s' $i (set_color -o black) $s $u (set_color normal)
            case 'hg*'
                printf ' %s%s%s' (set_color -o red) (hg prompt '{status}') (set_color normal)
        end
    end
end
