#!/usr/bin/perl -w
use strict;
use Gtk2::TestHelper tests => 2;

# $Header$

my $adjustment = Gtk2::Adjustment -> new(0, 0, 100, 1, 5, 10);

my $scale = Gtk2::VScale -> new($adjustment);
isa_ok($scale, "Gtk2::VScale");

$scale = Gtk2::VScale -> new_with_range(0, 100, 1);
isa_ok($scale, "Gtk2::VScale");

__END__

Copyright (C) 2003 by the gtk2-perl team (see the file AUTHORS for the
full list).  See LICENSE for more information.
