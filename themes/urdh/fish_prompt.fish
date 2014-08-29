# urdh prompt theme, by Simon Sigurdhsson <http://github.com/urdh/>
function _urdh_theme_user --description 'Print user name'
    switch $USER
        case root
            printf '%s%s%s' (set_color red) $USER (set_color normal)
        case '*'
            printf '%s' $USER
    end
end

function _urdh_theme_cwd --description 'Print current working directory'
    printf '%s%s%s' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function _urdh_theme_vcs --description 'Write out the VCS prompt'
    set -l ___vcs (vcprompt -f '%n')
    if test -n "$___vcs"
        switch $___vcs
            case 'git*'
                set -g __fish_git_prompt_color_branch 'black' '--bold'
                set -g __fish_git_prompt_color_merging 'red' '--bold'
                __fish_git_prompt ' %s'
            case 'hg*'
                printf ' %s%s%s' (set_color -o black) (vcprompt -f '%b') (set_color normal)
        end
    end
end

function fish_prompt --description 'Write out the prompt'
    # precalc some variables
    if not set -q _urdh_theme_hostname
        set -g _urdh_theme_hostname (hostname|cut -d . -f 1)
    end
    # print the prompt
    set -l ___host (printf '%s@%s' (_urdh_theme_user) $_urdh_theme_hostname)
    set -l ___cwd (_urdh_theme_cwd)
    set -l ___vcs (printf '%s%s' (_urdh_theme_vcs))
    printf '%s %s%s> ' $___host $___cwd $___vcs
end
