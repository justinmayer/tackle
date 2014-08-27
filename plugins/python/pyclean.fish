function pyclean -d "Recursively remove .pyc/.pyo/__pycache__ from current directory"
    set -l path_to_clean

    if set -q $argv
        set path_to_clean .
    else
        set path_to_clean $argv
    end

    find $path_to_clean -name "*.py[co]" -type f -delete
    find $path_to_clean -name "__pycache__" -type d -print0|xargs -0 rm -r --
end
