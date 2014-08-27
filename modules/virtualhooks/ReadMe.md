# Virtualhooks

### Problem

Remembering to set (and later unset) environment variables is hard. Even when you remember, manually setting and unsetting environment variables is a chore.

### Solution

Virtualhooks will set your desired environment variables upon [virtualenv][] activation, as well as unset those variables upon deactivation.

This can be particularly useful for database passwords, API keys, and other secrets you might prefer to keep out of your source code repository.

## Usage

Enable this module and create a `virtualhooks.fish` file inside each virtual environment that you want to use with Virtualhooks. While the intended goal is to set environment variables, any [fish][] code contained inside `$VIRTUAL_ENV/virtualhooks.fish` will be sourced upon `virtualenv` activation.

Following is an example `virtualhooks.fish` file that defines a few environment variables that will be set/unset upon `virtualenv` activation/deactivation.

    set -gx HTTP_HOST "justinmayer.com"
    set -gx PG_PASSWORD "foo"
    set -gx DEPLOYMENT_API_KEY "test-ka8pv3ygn5ozp7qkf"

    function __virtualteardown --on-event virtualenv_will_deactivate
        set -e HTTP_HOST
        set -e DB_PASSWORD
        set -e DEPLOYMENT_API_KEY
    end


[fish]: http://fishshell.com/
[virtualenv]: http://virtualenv.readthedocs.org/
