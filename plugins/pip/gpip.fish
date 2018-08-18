function gpip --wraps pip -d "Manage globally-installed Python packages"
    env PIP_REQUIRE_VIRTUALENV="0" pip $argv --disable-pip-version-check
end
