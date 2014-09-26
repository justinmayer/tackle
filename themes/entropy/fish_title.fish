function fish_title -d "Show PWD in title, preceded by process if not fish"
    if [ $_ != fish ]
        echo "$_: "
        prompt_pwd
    else
        prompt_pwd
    end
end
