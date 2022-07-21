#!bash

set -e

issue=$(config issue)

set -x

mkdir -p issues/$issue

cat << 'CODE' > issues/$issue/task.bash
set -e

cat $root_dir/task.bash

$RUSTCBIN --version

cat << 'HERE' > $cache_dir/code.rs

# broken code here

HERE

cd $cache_dir

echo "run $RUSTCBIN $cache_dir/code.rs ..."

$RUSTCBIN $cache_dir/code.rs

CODE

git add issues/$issue

git add .tomty/$issue.raku

