#!/bin/bash

function exchange() {
  gresource extract /usr/lib/libgtk-3.so /org/gtk/libgtk/theme/Adwaita/gtk-contained-dark.css \
    | grep -i "$1" >> ./gtk-3.0/gtk.css

  find gtk-* -type f -exec sed -i "s/$1/$2/gI" {} \;
}

# clean all gtk data
rm -rf gtk-*

# copy gtk2 theme
cp -rf /usr/share/themes/Adwaita-dark/gtk-2.0 .

# create gtk3 theme
mkdir gtk-3.0
echo '@import url("resource:///org/gtk/libgtk/theme/Adwaita/gtk-contained-dark.css");' > gtk-3.0/gtk.css

exchange "33393B" "1D1F21" # base
exchange "232729" "2B2E31" # textfields
exchange "272C2D" "1D1F21" # pluma, tab background
exchange "262b2d" "161719" # menu entry

exchange "215d9c" "4a89c7" # accent color
exchange "184472" "4a89c7" # selection outline
exchange "4a90d9" "ffffff" # menutext highlight

echo 'menubar, .menubar { background: #161719; }' >> ./gtk-3.0/gtk.css
echo '.mate-panel-menu-bar, .mate-panel-menu-bar menubar, panel-toplevel.background, panel-toplevel.background menubar { background-color: #161719; }' >> ./gtk-3.0/gtk.css
