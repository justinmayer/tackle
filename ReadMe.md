# Tackle

Tackle is a repository of [Fish shell][] functions, modules, plugins, and themes designed to be used with the [Tacklebox][] framework.

Visit the [Tacklebox][] project for information on installation, usage, and other useful documentation.

### Modules

- **virtualfish** — [Virtualfish][] facilitates [Virtualenv][] management and matches projects to virtual environments
- **virtualhooks** — sources `$VIRTUAL_ENV/virtualhooks.fish` upon virtual environment activation (requires Virtualfish)
- **z** - jump to often-used directories, weighted by “frecency”

### Plugins

- **docker** — provides useful commands to manage [Docker][] containers and images
- **extract** — extracts a variety of archive file formats; `compress` function also included
- **grc** — colorizes terminal output of ping, make, and other commands (must first install [grc][] via Homebrew/apt)
- **hg** — facilitates interactions with [Mercurial][] repositories
- **pip** – [Pip][] command completions and handy wrapper functions
- **python** — functions to run simple HTTP server and clean `.pyc` files
- **sdl** — sudo the last command in history
- **up** — update Fish completions, Homebrew, Python packages, and Vim plugins (via Vundle)

### Themes

- [entropy][] — shows Virtualenv, Git, and Mercurial status; indicates if connected to another host via SSH
- [budspencer][]
- [urdh][]

### Functions

These are helper functions, mainly to be used inside of configuration and other functions:

- **_confirmation** — confirmation prompt for use in interactive scripts
- **_logo** — prints a colorful Fish shell logo as ASCII art
- **_prepend_path** — prepend the given path, if it exists, to the specified path list


## Contributing

Contributions to both Tackle and [Tacklebox][] are welcome. If you would like to contribute to the project, please review the [Contributing Guidelines][] thoroughly.

[contributing guidelines]: https://github.com/justinmayer/tackle/blob/master/Contributing.md
[docker]: http://www.docker.com/
[fish shell]: http://fishshell.com/
[grc]: http://korpus.juls.savba.sk/~garabik/software/grc.html
[Mercurial]: http://mercurial.selenic.com/
[pip]: http://pip.readthedocs.org/
[Tacklebox]: https://github.com/justinmayer/tacklebox
[virtualenv]: http://virtualenv.readthedocs.org/
[Virtualfish]: https://github.com/adambrenecki/virtualfish
[entropy]: https://github.com/justinmayer/tackle/tree/master/themes/entropy
[budspencer]: https://github.com/justinmayer/tackle/tree/master/themes/budspencer
[urdh]: https://github.com/justinmayer/tackle/tree/master/themes/urdh

