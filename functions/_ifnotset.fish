function _ifnotset -d "To save a few cycles, only set variables if not already set"
    if not set -q $argv[1]
        set -g $argv[1] $argv[2]
    end
end
