# urdh prompt theme, by Simon Sigurdhsson <http://github.com/urdh/>
function fish_title --description 'Set terminal title'
    if set -q fish_title_disabled
        return
    end

    set -l pwd (prompt_pwd)
    switch "$_"
        case 'ssh'
            set -g fish_title_string 'ssh'
        case 'fish'
            set -g fish_title_string (printf 'idle in %s' $pwd)
        case '*'
            set -g fish_title_string (printf 'running %s in %s' $_ $pwd)
    end

    if test -n "$SSH_CONNECTION"
        printf 'fish on %s: %s' (hostname|cut -d . -f 1) $fish_title_string
    else
        printf 'fish: %s' $fish_title_string
    end
end
