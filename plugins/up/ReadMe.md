# Update all the things

### Problem

It's hard to remember which parts of your system need updating, as well as the specific commands needed to initiate the update processes.

### Solution

Use the `up` command to update Homebrew, Python, Vundle, Fish completions and TeXLive:

    up all

If you prefer, you can update individual aspects of your system:

    up python vundle

### Python

Running `up python` makes the assumption that you don't need root permissions in order to install Python packages on Mac OS X, which is the case if you are using [Homebrewed Python][]. On the other hand, it is assumed that you update your _Linux_ systems via `sudo pip install --upgrade foo`.

If a [virtualenv][] is active, dependencies listed in `requirements.txt` will be upgraded. If no such file is found, any outdated packages in the virtual environment will be upgraded.

If no virtual environment is active, global Python packages will be updated.
