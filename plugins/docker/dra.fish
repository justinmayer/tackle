function dra -d "Remove all Docker containers"
    if _confirmation
        if which docker
            docker rm (docker ps -a -q)
        else
            echo "Docker could not be found. Is it installed?"
        end
    end
end
