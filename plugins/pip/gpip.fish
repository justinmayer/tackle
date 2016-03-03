function gpip --wraps pip -d "Manage globally-installed Python packages"
    env PIP_REQUIRE_VIRTUALENV="" pip $argv
end
