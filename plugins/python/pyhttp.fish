function pyhttp -d "Start an HTTP server, taking an optional parameter for the port number"
    if test -n "$argv"
        set HTTPPORT $argv
    else
        set HTTPPORT 8000
    end

    _python -m SimpleHTTPServer $HTTPPORT
end
