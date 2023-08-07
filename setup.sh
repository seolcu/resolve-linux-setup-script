#!/bin/bash

sudo apt install -y distrobox
distrobox create -n resolve -i fedora:37 -Y
distrobox enter resolve -- sudo dnf install -y fuse-libs alsa-lib apr apr-util fontconfig freetype libglvnd libglvnd-egl libglvnd-glx libglvnd-opengl libICE librsvg2 libSM libX11 libXcursor libXext libXfixes libXi libXinerama libxkbcommon libxkbcommon-x11 libXrandr libXrender libXtst libXxf86vm mesa-libGLU mtdev pulseaudio-libs xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm mesa-libOpenCL libxcrypt-compat alsa-plugins-pulseaudio
sudo ./DaVinci_Resolve_linux.run
sudo mkdir /opt/resolve
distrobox enter resolve -- distrobox-export --app /opt/resolve/bin/resolve