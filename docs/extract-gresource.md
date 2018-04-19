# Get Original Theme Data

Adwaita has moved its data into a so called "gresource" file and is now shipped directly bundled with GTK. To extract the theme file itself, it is required grab it out of the resource file. This can be done by issueing the following command:

## Default theme

		gresource extract /usr/lib/libgtk-3.so /org/gtk/libgtk/theme/Adwaita/gtk-contained.css

## Dark theme

		gresource extract /usr/lib/libgtk-3.so /org/gtk/libgtk/theme/Adwaita/gtk-contained-dark.css
