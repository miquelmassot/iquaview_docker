#!/bin/bash

# Copy the binaries to /usr/local/bin
sudo cp bin/iquaview /usr/local/bin
sudo cp bin/qgis /usr/local/bin

# Copy the desktop files to /usr/share/applications
sudo cp launchers/iquaview.desktop /usr/share/applications
sudo cp launchers/qgis.desktop /usr/share/applications

# Copy icons to /usr/share/icons
sudo cp icons/iquaview.png /usr/share/icons
sudo cp icons/qgis.png /usr/share/icons
