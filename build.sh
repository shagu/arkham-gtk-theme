#!/bin/bash
OUTPUT="~/.themes/Adwaita-Atom"

function exchange() {
  gresource extract /usr/lib/libgtk-3.so /org/gtk/libgtk/theme/Adwaita/gtk-contained-dark.css \
    | grep -i "$1" >> $OUTPUT/gtk-3.0/gtk.css
  find $OUTPUT -type f -exec sed -i "s/$1/$2/gI" {} \;
}

rm -rf $OUTPUT
cp -rf /usr/share/themes/Adwaita-dark $OUTPUT

exchange 33393B 1D1F21
exchange 232729 2B2E31

echo 'menubar, .menubar { background: #161719; }' >> $OUTPUT/gtk-3.0/gtk.css
