#!/bin/bash
TMPDIR=$(mktemp -d)
TMPFILE=$(mktemp)
wget "https://github.com/dracula/gtk/archive/master.zip" -O $TMPFILE
unzip -d $TMPDIR $TMPFILE
mkdir -p $HOME/.themes/
rm -rf $HOME/.themes/Dracula
mv $TMPDIR/gtk-master $HOME/.themes/Dracula
wget "https://github.com/dracula/gtk/files/5214870/Dracula.zip" -O $TMPFILE
unzip -d $TMPDIR $TMPFILE
mkdir -p $HOME/.icons/
rm -rf $HOME/.icons/Dracula
mv $TMPDIR/Dracula $HOME/.icons/Dracula
