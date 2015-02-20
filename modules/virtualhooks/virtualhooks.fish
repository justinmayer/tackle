# Virtualhooks: https://github.com/justinmayer/tackle/tree/master/modules/virtualhooks
function virtualhooks --on-event virtualenv_did_activate
    if test -f "$VIRTUAL_ENV/virtualhooks.fish"
        echo "Sourcing $VIRTUAL_ENV/virtualhooks.fish"
        source "$VIRTUAL_ENV/virtualhooks.fish"
    end
end
