function _colorize -d "Colorize command output via grc"
    # See: /usr/local/etc/grc.bashrc
    grc -es --colour=auto $argv
end
