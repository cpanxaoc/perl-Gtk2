/*
 * Copyright (c) 2003 by the gtk2-perl team (see the file AUTHORS)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the 
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, 
 * Boston, MA  02110-1301  USA.
 *
 * $Id$
 */

#include "gtk2perl.h"

MODULE = Gtk2::OptionMenu	PACKAGE = Gtk2::OptionMenu	PREFIX = gtk_option_menu_

=for deprecated_by Gtk2::ComboBox
=cut

GtkWidget *
gtk_option_menu_new (class)
    C_ARGS:
	/* void */

GtkWidget *
gtk_option_menu_get_menu (option_menu)
	GtkOptionMenu * option_menu

void
gtk_option_menu_set_menu (option_menu, menu)
	GtkOptionMenu * option_menu
	GtkWidget     * menu

void
gtk_option_menu_remove_menu (option_menu)
	GtkOptionMenu *option_menu

gint
gtk_option_menu_get_history (option_menu)
	GtkOptionMenu *option_menu

void
gtk_option_menu_set_history (option_menu, index)
	GtkOptionMenu *option_menu
	guint index

