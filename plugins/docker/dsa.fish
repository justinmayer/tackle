function dsa -d "Stop all Docker containers"
    if _confirmation
        if which docker
            docker stop (docker ps -q)
        else
            echo "Docker could not be found. Is it installed?"
        end
    end
end
