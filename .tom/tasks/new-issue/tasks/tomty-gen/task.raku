#!raku

my $i = config()<issue>;
my $tags = config()<tags>.perl;

my $header = "#!raku";

$header ~= qq[

say "==================================================";
say "[https://github.com/rust-lang/rust/issues/$i]";
say "==================================================";
] if $i ~~ /^^ \d+ $$/;

say "building [.tomty/$i.raku]";

".tomty/$i.raku".IO.spurt(qq[
$header

=begin tomty
%(
  tag => $tags
);
=end tomty

task-run "issues/$i";

]);



