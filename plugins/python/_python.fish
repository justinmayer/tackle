function _python -d "Use python2 binary if found, otherwise fall back to python"
    if which python2
        python2 $argv
    else
        python $argv
    end
end
