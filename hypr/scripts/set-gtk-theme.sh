#!/bin/bash

# Wait for 10 seconds
sleep 10

# Define schema
gnome_schema="org.gnome.desktop.interface"

# Apply settings
gsettings set "$gnome_schema" gtk-theme 'Materia-compact'
gsettings set "$gnome_schema" color-scheme 'prefer-dark'
gsettings set "$gnome_schema" cursor-theme 'Bibata-Modern-Ice'
