my $issue-num;
my $tags;

while True {

  $issue-num = prompt("issue number: ").chomp;

  if $issue-num ~~ /^^ \w+ $$/ {
    last
  } else {
    say "value should be in \\w+"; 
  }

}

$tags = prompt("tags: (use space separator for many): ").chomp;

task-run ".tom/tasks/new-issue", %(
  issue => $issue-num,
  tags => $tags ?? $tags.split(/\s+/) !! ['open']
);

say "==============================================================";
say "you test is ready";
say "=================";
say "1) prepare it: nano issues/$issue-num/task.bash";
say "2) run it: tomty $issue-num";
