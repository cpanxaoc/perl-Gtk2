#!/usr/bin/perl -w
use strict;

use Gtk2;
use Gtk2::TestHelper tests => 2;

my $separator = Gtk2::VSeparator -> new();
isa_ok($separator, "Gtk2::Separator");
isa_ok($separator, "Gtk2::VSeparator");

__END__

Copyright (C) 2003 by the gtk2-perl team (see the file AUTHORS for the
full list).  See LICENSE for more information.
