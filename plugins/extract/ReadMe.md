# Extract and Compress

### Problem

It's hard to remember which commands to use to extract the various compressed archive formats.

### Solution

Use the `extract` command to extract `.xz`, `.bz2`, `.gz`, `.zip`, `.tar(.XXX)`, `.rar`, and `.pax` archives. For example:

    extract your-file.xz

### Bonus: Compress

Similarly, the syntax for compressing files and directories is neither consistent nor particularly memorable.

**Provided you have `xz` installed**, you can compress a single file or directory (as `*.xz` or `*.txz`, respectively) via the following simple command:

    compress your-file-or-directory

The archive will be created in-place unless a destination is specified, as shown via this example:

    compress your-directory ~/your-new-archive.txz

**Mac OS X users:** You should install GNU Tar via `brew install gnu-tar`, since the bundled version of `tar` is ancient and doesn’t support `xz`.

### Extra Bonus: Parallel Compression and Extraction

If you have [pixz][] installed, both compression and extraction of `xz` archives will be processed in parallel on multi-core systems. This usually results in a dramatic increase in compression/extraction speed.

To install `pixz` on Mac OS X via Homebrew:

    brew install pixz gnu-tar

To install `pixz` on Debian/Ubuntu`:

    sudo aptitude install pixz


[pixz]: https://github.com/vasi/pixz
