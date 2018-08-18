# Entropy

Entropy provides a crisp-looking appearance for your prompt, including support for [virtualenv][], [Git][], and [Mercurial][].

![Entropy prompt screenshot][screenshot]

## Version Control Status

If you only use Git, then you're all ready to go.

### vcprompt

If you use Mercurial and want to see repository status in this theme’s prompt, you **must** have [vcprompt][] installed, which on macOS can be done via:

    brew install vcprompt

Enable [vcprompt][] in your Fish configuration via:

    set __use_vcprompt

Why use [vcprompt][]? Determining whether the current working directory is under version control is cumbersome and adds latency to the prompt. It doesn't make sense to have a slow terminal prompt on a 3+ GHz machine, right? [vcprompt][] is a tiny C program that is also extremely fast, which makes it perfectly suited to making this determination.

### hg-prompt

If you use Mercurial, you'll also need to install [hg-prompt][], which populates the prompt with relevant information when the current working directory is inside a Mercurial repository.

[hg-prompt]: http://sjl.bitbucket.org/hg-prompt/
[Git]: http://git-scm.com/
[Mercurial]: http://mercurial.selenic.com/
[screenshot]: https://i.imgur.com/ESkmQKF.png
[vcprompt]: https://bitbucket.org/gward/vcprompt
[virtualenv]: http://virtualenv.readthedocs.org/
