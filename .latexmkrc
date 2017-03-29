$pdflatex = 'internal pulplatex pdflatex %Y%B.log %O %S';
$latex = 'internal pulplatex latex %Y%B.log %O %S';

sub pulplatex {
  my ($prog, $log, @args) = @_;
  print "====Running $prog @args\n";
  my $ret1 = system( $prog, '-interaction=batchmode', @args );
  print "====Summarizing the log file $log\n";
  system( 'pulp', $log );
  return $ret1;
}
