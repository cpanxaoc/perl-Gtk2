#
# $Header$
#

use Gtk2::TestHelper
	# FIXME 2.4
	at_least_version => [2, 3, 0, "GtkEntryCompletion is new in 2.4"],
	tests => 4;

sub match_func {
	my ($completion, $key, $iter, $data) = @_;
	isa_ok ($completion, 'Gtk2::EntryCompletion');
	#isa_ok ($key, 'STRING');
	isa_ok ($iter, 'Gtk2::TreeIter');
	is ($data, 42);
	return TRUE;
}

my $entry = Gtk2::Entry->new;

$completion = Gtk2::EntryCompletion->new;
isa_ok ($completion, 'Gtk2::EntryCompletion');

$entry->set_completion ($completion);

is ($completion->get_entry, $entry);


my $model = Gtk2::ListStore->new ('Glib::String');
$completion->set_model ($model);
is ($completion->get_model, $model);
$completion->set_text_column (0);

$completion->set_match_func (\&match_func, 42);

$completion->set_minimum_key_length (5);
is ($completion->get_minimum_key_length, 5);

$completion->complete;

$completion->insert_action_text (1, 'text string');

$completion->insert_action_markup (2, '<i>markup</i> string');

$entry->set_text ('text s');
$completion->complete;

$completion->delete_action (0);


