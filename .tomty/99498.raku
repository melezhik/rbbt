
#!raku

say "==================================================";
say "[https://github.com/rust-lang/rust/issues/99498]";
say "==================================================";


=begin tomty
%(
  tag => $["open"]
);
=end tomty

task-run "issues/99498";

