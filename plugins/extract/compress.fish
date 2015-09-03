function compress -d "Compress a file or directory via xz, with optional destination"
    # Target is a file
    if test -f $argv[1]
        set file $argv[1]
        # If no destination is provided, compress in-place
        if test (count $argv) = 1
            set destination $file.xz
        else
            set destination $argv[2]
        end
        echo -s "Compressing file: " (set_color --bold blue) $file (set_color normal)
        command -s pixz >/dev/null
        and pixz $file $destination
        or xz $file $destination
    end

    # Target is a directory
    if test -d $argv[1]
        set directory $argv[1]
        # If no destination is provided, compress in-place
        if test (count $argv) = 1
            set destination $directory.txz
        else
            set destination $argv[2]
        end
        echo -s "Compressing directory: " (set_color --bold blue) $directory (set_color normal)
        set os (uname)
        switch $os
            case Darwin
                command -s gtar pixz >/dev/null
                and gtar -Ipixz -cf $destination $directory
                or tar -Jcf $destination $directory
            case '*'
                command -s pixz >/dev/null
                and tar -Ipixz -cf $destination $directory
                or tar -Jcf $destination $directory
        end
    end
end
