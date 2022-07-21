set -e

cat $root_dir/task.bash

$RUSTCBIN --version

cat << 'HERE' > $cache_dir/code.rs

fn main() {
    let result = std::fs::create_dir("/tmp/does_not_exist/new_dir_name");
    println!("{:?}", result);
}

HERE

cd $cache_dir

echo "run $RUSTCBIN $cache_dir/code.rs ..."

export LANG=zh_CN

$RUSTCBIN $cache_dir/code.rs && ./code 2>&1


