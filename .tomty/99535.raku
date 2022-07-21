
#!raku

say "==================================================";
say "[https://github.com/rust-lang/rust/issues/99535]";
say "==================================================";


=begin tomty
%(
  tag => $["open"]
);
=end tomty

task-run "issues/99535";

