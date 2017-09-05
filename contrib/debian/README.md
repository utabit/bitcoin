
Debian
====================
This directory contains files used to package utabitd/utabit-qt
for Debian-based Linux systems. If you compile utabitd/utabit-qt yourself, there are some useful files here.

## utabit: URI support ##


utabit-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install utabit-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your utabit-qt binary to `/usr/bin`
and the `../../share/pixmaps/utabit128.png` to `/usr/share/pixmaps`

utabit-qt.protocol (KDE)

