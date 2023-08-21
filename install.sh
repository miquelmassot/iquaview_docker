#!/bin/bash

# Copy the binaries to /usr/local/bin
sudo cp iquaview /usr/local/bin
sudo cp qgis /usr/local/bin

# Copy the desktop files to /usr/share/applications
sudo cp iquaview.desktop /usr/share/applications
sudo cp qgis.desktop /usr/share/applications

# Copy icons to /usr/share/icons
sudo cp iquaview.png /usr/share/icons
sudo cp qgis.png /usr/share/icons