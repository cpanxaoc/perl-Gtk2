#include "gtk2perl.h"

MODULE = Gtk2::Gdk	PACKAGE = Gtk2::Gdk	PREFIX = gdk_

###  void gdk_parse_args (gint *argc, gchar ***argv) 
#void
#gdk_parse_args (argc, argv)
#	gint *argc
#	gchar ***argv
#
###  void gdk_init (gint *argc, gchar ***argv) 
#void
#gdk_init (argc, argv)
#	gint *argc
#	gchar ***argv

#if GTK_CHECK_VERSION(2,2,0)

###  gboolean gdk_init_check (gint *argc, gchar ***argv) 
#gboolean
#gdk_init_check (argc, argv)
#	gint *argc
#	gchar ***argv

const gchar *
gdk_get_display_arg_name (class)
	SV * class
    C_ARGS:
	

#endif /* >= 2.2.0 */

### deprecated
	

##  gchar* gdk_set_locale (void) 
gchar*
gdk_set_locale (class)
	SV * class
    C_ARGS:
	

## FIXME should allow NULL to remove the property
void
gdk_set_sm_client_id (class, sm_client_id)
	SV * class
	const gchar * sm_client_id
    C_ARGS:
	sm_client_id

#if GTK_CHECK_VERSION(2,2,0)

##  void gdk_notify_startup_complete (void) 
void
gdk_notify_startup_complete (class)
	SV * class
    C_ARGS:
	

#endif /* 2.2.0 */

const char *
gdk_get_program_class (class)
	SV * class
    C_ARGS:
	

void
gdk_set_program_class (class, program_class)
	SV * class
	const char *program_class
    C_ARGS:
	program_class

##  gchar* gdk_get_display (void) 
gchar*
gdk_get_display (class)
	SV * class
    C_ARGS:
	

##  void gdk_flush (void) 
void
gdk_flush (class)
	SV * class
    C_ARGS:
	

gint
screendims (class)
	SV * class
    ALIAS:
	Gtk2::Gdk::screen_width = 1
	Gtk2::Gdk::screen_height = 2
	Gtk2::Gdk::screen_width_mm = 3
	Gtk2::Gdk::screen_height_mm = 4
    CODE:
	switch (ix) {
		case 1: RETVAL = gdk_screen_width (); break;
		case 2: RETVAL = gdk_screen_height (); break;
		case 3: RETVAL = gdk_screen_width_mm (); break;
		case 4: RETVAL = gdk_screen_height_mm (); break;
	}
    OUTPUT:
	RETVAL

##  GdkGrabStatus gdk_pointer_grab (GdkWindow *window, gboolean owner_events, GdkEventMask event_mask, GdkWindow *confine_to, GdkCursor *cursor, guint32 time_) 
GdkGrabStatus
gdk_pointer_grab (class, window, owner_events, event_mask, confine_to, cursor, time_)
	SV * class
	GdkWindow *window
	gboolean owner_events
	GdkEventMask event_mask
	GdkWindow *confine_to
	GdkCursor *cursor
	guint32 time_
    C_ARGS:
	window, owner_events, event_mask, confine_to, cursor, time_

##  void gdk_pointer_ungrab (guint32 time_) 
void
gdk_pointer_ungrab (class, time_)
	SV * class
	guint32 time_
    C_ARGS:
	time_

##  gboolean gdk_pointer_is_grabbed (void) 
gboolean
gdk_pointer_is_grabbed (class)
	SV * class
    C_ARGS:
	

##  GdkGrabStatus gdk_keyboard_grab (GdkWindow *window, gboolean owner_events, guint32 time_) 
GdkGrabStatus
gdk_keyboard_grab (class, window, owner_events, time_)
	SV * class
	GdkWindow *window
	gboolean owner_events
	guint32 time_
    C_ARGS:
	window, owner_events, time_

##  void gdk_keyboard_ungrab (guint32 time_) 
void
gdk_keyboard_ungrab (class, time_)
	SV * class
	guint32 time_
    C_ARGS:
	time_

##  void gdk_beep (void) 
void
gdk_beep (class)
	SV * class
    C_ARGS:
	

### deprecated
##  gboolean gdk_get_use_xshm (void) 
##  void gdk_set_use_xshm (gboolean use_xshm) 


##  void gdk_error_trap_push (void) 
void
gdk_error_trap_push (class)
	SV * class
    C_ARGS:
	

##  gint gdk_error_trap_pop (void) 
gint
gdk_error_trap_pop (class)
	SV * class
    C_ARGS:
	

### deprecated in favor of G::IO::add_watch etc
##  gint gdk_input_add_full (gint source, GdkInputCondition condition, GdkInputFunction function, gpointer data, GdkDestroyNotify destroy) 
##  gint gdk_input_add (gint source, GdkInputCondition condition, GdkInputFunction function, gpointer data) 
##  void gdk_input_remove (gint tag) 

### applications should not set this.
##  void gdk_set_double_click_time (guint msec) 

MODULE = Gtk2::Gdk	PACKAGE = Gtk2::Gdk::Rectangle	PREFIX = gdk_rectangle_

##  gboolean gdk_rectangle_intersect (GdkRectangle *src1, GdkRectangle *src2, GdkRectangle *dest) 
GdkRectangle_copy *
gdk_rectangle_intersect (src1, src2)
	GdkRectangle *src1
	GdkRectangle *src2
    PREINIT:
	GdkRectangle dest;
    CODE:
	if (!gdk_rectangle_intersect (src1, src2, &dest))
		XSRETURN_UNDEF;
	RETVAL = &dest;
    OUTPUT:
	RETVAL

##  void gdk_rectangle_union (GdkRectangle *src1, GdkRectangle *src2, GdkRectangle *dest) 
GdkRectangle_copy *
gdk_rectangle_union (src1, src2)
	GdkRectangle *src1
	GdkRectangle *src2
    PREINIT:
	GdkRectangle dest;
    CODE:
	gdk_rectangle_union (src1, src2, &dest);
	RETVAL = &dest;
    OUTPUT:
	RETVAL

MODULE = Gtk2::Gdk	PACKAGE = Gtk2::Gdk	PREFIX = gdk_

###  gchar *gdk_wcstombs (const GdkWChar *src) 
#gchar *
#gdk_wcstombs (src)
#	const GdkWChar *src

##  gint gdk_mbstowcs (GdkWChar *dest, const gchar *src, gint dest_max) 
#gint
#gdk_mbstowcs (dest, src, dest_max)
#	GdkWChar *dest
#	const gchar *src
#	gint dest_max

###  gboolean gdk_event_send_client_message (GdkEvent *event, GdkNativeWindow winid) 
#gboolean
#gdk_event_send_client_message (event, winid)
#	GdkEvent *event
#	GdkNativeWindow winid
#
###  void gdk_event_send_clientmessage_toall (GdkEvent *event) 
#void
#gdk_event_send_clientmessage_toall (event)
#	GdkEvent *event
#
###  gboolean gdk_event_send_client_message_for_display (GdkDisplay *display, GdkEvent *event, GdkNativeWindow winid) 
#gboolean
#gdk_event_send_client_message_for_display (display, event, winid)
#	GdkDisplay *display
#	GdkEvent *event
#	GdkNativeWindow winid

###  void gdk_threads_enter (void) 
#void
#gdk_threads_enter (void)
#	void
#
###  void gdk_threads_leave (void) 
#void
#gdk_threads_leave (void)
#	void
#
###  void gdk_threads_init (void) 
#void
#gdk_threads_init (void)
#	void
#
