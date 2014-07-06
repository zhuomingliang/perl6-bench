[
 {
  name  => 'parse-json',
  skip  => [qw( )],
  tags  => [qw( io input parsing )],
  scale => 1 << 3,
  perl5 => [qw( BENCH/perl5/parse-json DATA/panda-projects.json SCALE )],
  perl6 => [qw( BENCH/perl6/parse-json DATA/panda-projects.json SCALE )],
  nqp   => [qw( BENCH/nqp/parse-json   DATA/panda-projects.json SCALE )],
 },
 {
  name  => 'rc-forest-fire',
  skip  => [qw( niecza.nqp p6.pl p6.js_v8 )],
  tags  => [qw( io output random simulation )],
  scale => 1 << 3,
  x_label => 'Frames per Run',
  y_label => 'Frames per Second',
  perl5 => [qw( BENCH/perl5/rc-forest-fire 16 16 SCALE )],
  perl6 => [qw( BENCH/perl6/rc-forest-fire 16 16 SCALE )],
  nqp   => [qw( BENCH/nqp/rc-forest-fire   16 16 SCALE )],
 },
 {
  name  => 'rc-man-or-boy-test',
  skip  => [qw( )],
  tags  => [qw( recursion closures )],
  scale => 15,
  work  => sub { 1 << ($_[0] - 1) },
  scaling => 'linear',
  x_label => 'k Parameter',
  perl5 => [qw( BENCH/perl5/rc-man-or-boy-test SCALE )],
  perl6 => [qw( BENCH/perl6/rc-man-or-boy-test SCALE )],
  nqp   => [qw( BENCH/nqp/rc-man-or-boy-test   SCALE )],
 },
 {
  name  => 'rc-self-describing-numbers',
  skip  => [qw( )],
  tags  => [qw( )],
  scale => 1 << 14,
  perl5 => [qw( BENCH/perl5/rc-self-describing-numbers SCALE )],
  perl6 => [qw( BENCH/perl6/rc-self-describing-numbers SCALE )],
  nqp   => [qw( BENCH/nqp/rc-self-describing-numbers   SCALE )],
 },
 {
  name  => 'rc-dragon-curve',
  skip  => [qw( )],
  tags  => [qw( io output )],
  scale => 10,
  work  => sub { 1 << $_[0] },
  scaling => 'linear',
  x_label => 'Order',
  perl5 => [qw( BENCH/perl5/rc-dragon-curve SCALE )],
  perl6 => [qw( BENCH/perl6/rc-dragon-curve SCALE )],
  nqp   => [qw( BENCH/nqp/rc-dragon-curve   SCALE )],
 },
 {
  name  => 'rc-9-billion-names',
  skip  => [qw( )],
  tags  => [qw( bigint bigmem )],
  scale => 1 << 7,
  perl5 => [qw( BENCH/perl5/rc-9-billion-names SCALE )],
  perl6 => [qw( BENCH/perl6/rc-9-billion-names SCALE )],
  nqp   => [qw( BENCH/nqp/rc-9-billion-names   SCALE )],
 },
 {
  name  => 'rc-mandelbrot',
  skip  => [qw( )],
  tags  => [qw( complex io output )],
  scale => 1 << 5,
  work  => sub { $_[0] * $_[0] * 2 / 3 },
  perl5 => [qw( BENCH/perl5/rc-mandelbrot SCALE )],
  perl6 => [qw( BENCH/perl6/rc-mandelbrot SCALE )],
  nqp   => [qw( BENCH/nqp/rc-mandelbrot   SCALE )],
 },
 {
  name  => 'spinner',
  skip  => [qw( )],
  tags  => [qw( io output )],
  scale => 1 << 5,
  perl5 => [qw( BENCH/perl5/spinner SCALE )],
  perl6 => [qw( BENCH/perl6/spinner SCALE )],
  nqp   => [qw( BENCH/nqp/spinner   SCALE )],
 },
 {
  name  => 'rc-forest-fire-stringify',
  skip  => [qw( )],
  tags  => [qw( array string )],
  scale => 1 << 7,
  perl5 => [qw( BENCH/perl5/rc-forest-fire-stringify 16 16 SCALE )],
  perl6 => [qw( BENCH/perl6/rc-forest-fire-stringify 16 16 SCALE )],
  nqp   => [qw( BENCH/nqp/rc-forest-fire-stringify   16 16 SCALE )],
 },
]
