# GTK+ Inspector

The GTK+ Inspector can be used to identify the elements of a GTK window and the corresponding name. Those names and classes are required to be able to adjust their appearance via the gtk stylesheet/theme. This tool is disabled by default but can be enabled via gsettings:

		gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true

Once it has been enabled, it can be shown by pressing <Ctrl> + <Shift> + D or <Ctrl> + <Shift> + I to automatically select the widget under the mouse pointer.
