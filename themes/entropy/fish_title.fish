function fish_title -d "Show host/process (if relevant) and PWD in title"
    if [ $SSH_CONNECTION ]
        echo "$__fish_prompt_hostname "
    end
    if [ $_ != fish ]
        echo "$_: "
    end
    prompt_pwd
end
