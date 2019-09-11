#!/bin/bash

file="/startapp.sh"
export DISPLAY=:20
Xvfb :20 -screen 0 1920x1080x24 &
x11vnc -display :20 -N -forever -shared -rfbport 5960 &
/novnc/noVNC/utils/launch.sh --listen 6960 --vnc localhost:5960 &
openbox-session &