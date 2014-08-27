function dria -d "Remove all Docker images"
    if _confirmation
        if which docker
            docker rmi (docker images -a -q)
        else
            echo "Docker could not be found. Is it installed?"
        end
    end
end
