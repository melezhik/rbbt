set -e

cat $root_dir/task.bash

$RUSTCBIN --version

cat << 'HERE' > $cache_dir/code.rs

#[derive(sqlx::FromRow)]
struct Foo {
    bar: _,
}

fn main() {}

HERE

cd $cache_dir

echo "run $RUSTCBIN $cache_dir/code.rs ..."

$RUSTCBIN $cache_dir/code.rs 2>&1

if test -f code; then
  echo "run compiled code ..."
  ./code 2>&1
fi

