pathTo='/mnt/d/Projects/LOL/REPOS'

doTheJob(){
    dir=$1
    if [ -d "$dir" ]; then
        branch=$(git --git-dir "$dir/.git" branch | sed -n -e 's/^\* \(.*\)/\1/p')
        status=$(git --git-dir "$dir/.git" --work-tree=$dir status) 
        ADJUSTMENT="--git-dir=$dir/.git --work-tree=$dir"
        ncu -u;
        git $ADJUSTMENT add package.json;
        git $ADJUSTMENT rm package-lock.json -f;
        git $ADJUSTMENT commit -m 'autoupdate dependencies remove old package-lock.json'; 
        git $ADJUSTMENT push;
    else
        branch='.git dir not found'
        status=''
    fi
}

for dir in $pathTo/*     # list directories in the form "/tmp/dirname/"
do
    doTheJob $dir &
    # dir=${dir%*/}      # remove the trailing "/"
    # echo ${dir##*/}    # print everything after the final "/"
    # (cd $dir) &&  git add package.json
done

echo 'DONE!!!'