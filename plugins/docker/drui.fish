function drui -d "Remove all untagged Docker images"
    if _confirmation
        if which docker
            docker rmi (docker images -q --filter "dangling=true")
        else
            echo "Docker could not be found. Is it installed?"
        end
    end
end
