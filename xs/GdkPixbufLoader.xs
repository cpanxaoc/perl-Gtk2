/*
 * Copyright (c) 2003 by the gtk2-perl team (see the file AUTHORS)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the 
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
 * Boston, MA  02111-1307  USA.
 *
 * $Header$
 */
#include "gtk2perl.h"

MODULE = Gtk2::Gdk::PixbufLoader	PACKAGE = Gtk2::Gdk::PixbufLoader	PREFIX = gdk_pixbuf_loader_

##  GdkPixbufLoader * gdk_pixbuf_loader_new (void) 
GdkPixbufLoader_noinc *
gdk_pixbuf_loader_new (class)
	SV * class
    C_ARGS:
	

##  GdkPixbufLoader * gdk_pixbuf_loader_new_with_type (const char *image_type, GError **error) 
GdkPixbufLoader_noinc *
gdk_pixbuf_loader_new_with_type (image_type)
	const char *image_type
    PREINIT:
	GError * error = NULL;
    CODE:
	RETVAL = gdk_pixbuf_loader_new_with_type (image_type, &error);
	if (!RETVAL)
		gperl_croak_gerror (NULL, error);
    OUTPUT:
	RETVAL

#if GTK_CHECK_VERSION(2,2,0)

##  void gdk_pixbuf_loader_set_size (GdkPixbufLoader *loader, int width, int height) 
void
gdk_pixbuf_loader_set_size (loader, width, height)
	GdkPixbufLoader *loader
	int width
	int height

#endif /* >= 2.2.0 */

##  gboolean gdk_pixbuf_loader_write (GdkPixbufLoader *loader, const guchar *buf, gsize count, GError **error) 
gboolean
gdk_pixbuf_loader_write (loader, buf, count=0)
	GdkPixbufLoader *loader
	SV * buf
	gint count
    PREINIT:
	GError * error = NULL;
    CODE:
	if (count == 0)
//		count = SvCUR (buf);
//		count = sv_len (ST (1));
		count = sv_len (buf);
//warn ("buf = %s\n", SvPVX (buf));
//warn ("writing %d bytes from %p", count, buf);
//warn ("   %d utf8 characters\n", sv_len_utf8 (buf));
//	SvLEN (buf) = count;
//	RETVAL = gdk_pixbuf_loader_write (loader, buf, count, &error);
	RETVAL = gdk_pixbuf_loader_write (loader, SvPVX (buf), count, &error);
	if (!RETVAL)
		gperl_croak_gerror (NULL, error);
    OUTPUT:
	RETVAL

##  GdkPixbuf * gdk_pixbuf_loader_get_pixbuf (GdkPixbufLoader *loader) 
GdkPixbuf *
gdk_pixbuf_loader_get_pixbuf (loader)
	GdkPixbufLoader *loader

##  GdkPixbufAnimation * gdk_pixbuf_loader_get_animation (GdkPixbufLoader *loader) 
GdkPixbufAnimation_ornull *
gdk_pixbuf_loader_get_animation (loader)
	GdkPixbufLoader *loader

##  gboolean gdk_pixbuf_loader_close (GdkPixbufLoader *loader, GError **error) 
void
gdk_pixbuf_loader_close (loader)
	GdkPixbufLoader *loader
    PREINIT:
	GError * error = NULL;
    CODE:
	if (!gdk_pixbuf_loader_close (loader, &error))
		gperl_croak_gerror (NULL, error);

#if GTK_CHECK_VERSION(2,2,0)

###  GdkPixbufFormat *gdk_pixbuf_loader_get_format (GdkPixbufLoader *loader) 
#GdkPixbufFormat *
#gdk_pixbuf_loader_get_format (loader)
#	GdkPixbufLoader *loader

#endif /* >= 2.2.0 */
