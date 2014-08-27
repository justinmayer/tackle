function hgc -d "Commit via Mercurial, with sanity checks"
    if test -z (hg incoming | grep "no changes found")
        echo "Incoming commits found. Run 'hg pull -u' to retrieve."
    else
        hg commit
    end
end
