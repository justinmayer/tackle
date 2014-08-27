function _confirm_prompt
    echo 'Are you sure you want to continue? [y/N] '
end

function _confirmation
    while true
        read -l -p _confirm_prompt confirm

        switch $confirm
            case Y y
                return 0
            case '' N n
                return 1
        end
    end
end
