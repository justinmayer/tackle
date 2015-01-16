function dre -d "Remove all exited Docker containers"
    if _confirmation
        if which docker
            docker rm (docker ps -a | grep Exited | awk '{print $1}')
        else
            echo "Docker could not be found. Is it installed?"
        end
    end
end
