#!/usr/bin/env perl

use warnings;
use strict;

use Chess::Elo qw(:all);

 # Alice is going to thump Bob...
  my ($alice_elo, $bob_elo) = (1600,1600);

  # Oh no, Alice lost to Bob!
  my $result = 0; # 0.5 for draw, 1 for win

  my @new_elo_alice_bob = elo ($alice_elo, 0, $bob_elo);
  use Data::Dumper; warn Dumper(\@new_elo_alice_bob);

  [
          '2068.17894295388',   # My, Alice took a hit on her rating :)
          '1231.82105704612'    # Bob is setting pretty 
  ];
