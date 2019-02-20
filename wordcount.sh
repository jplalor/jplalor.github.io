for sha in $(git rev-list --since="20 days ago" source | sed -e '$ d'); do
    echo $sha,\
	 'added:' $(git diff --word-diff=porcelain $sha~1..$sha|grep -e"^+[^+]"|wc -w|xargs),\
     'removed:' $(git diff --word-diff=porcelain $sha~1..$sha|grep -e"^-[^-]"|wc -w|xargs),\
     'dupes:' $(git diff $sha~1..$sha|grep -e"^+[^+]" -e"^-[^-]"|sed -e's/.//'|sort|uniq -d|wc -w|xargs)
done

#for commit in `git rev-list --all`; do
#    git archive $commit | tar -x -O | wc -w
#done
