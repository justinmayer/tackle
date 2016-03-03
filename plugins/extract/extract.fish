# Inspiration from: https://github.com/dideler/dotfiles/blob/master/.config/fish/functions/extract.fish
function extract -d "Expand or extract bundled & compressed files"
    for file in $argv
        if test -f $file
            echo -s "Extracting: " (set_color --bold blue) $file (set_color normal)
            switch $file
                case *.tar
                    tar -xf $file
                case *.tar.xz *.txz
                    # Use pixz for parallel extraction, if available
                    set os (uname)
                    if [ $os = "Darwin" ]
                        command -s pixz gtar >/dev/null
                        and gtar -Ipixz -xf $file
                        or tar -Jxf $file
                    else
                        command -s pixz >/dev/null
                        and tar -Ipixz -xf $file
                        or tar -Jxf $file
                    end
                case *.tar.bz2 *.tbz *.tbz2
                    tar -jxf $file
                case *.tar.gz *.tgz
                    tar -zxf $file
                case *.xz
                    command -s pixz >/dev/null
                    and pixz -d $file
                    or unxz $file
                case *.bz2
                    bunzip2 $file
                case *.gz
                    gunzip $file
                case *.rar
                    unrar x $file
                case *.zip
                    unzip -uo $file -d (basename $file .zip)
                case *.pax
                    pax -r < $file
                case '*'
                    echo "Extension not recognized, cannot extract $file"
            end
        else
            echo "$file is not a valid file"
        end
    end
end
