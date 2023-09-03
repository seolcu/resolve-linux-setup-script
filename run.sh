#!/bin/bash

chmod +x ./DaVinci_Resolve_Linux.run
distrobox create -n resolve -i fedora:37 -Y
distrobox enter resolve -- sudo dnf install -y fuse-libs alsa-lib apr apr-util fontconfig freetype libglvnd libglvnd-egl libglvnd-glx libglvnd-opengl libICE librsvg2 libSM libX11 libXcursor libXext libXfixes libXi libXinerama libxkbcommon libxkbcommon-x11 libXrandr libXrender libXtst libXxf86vm mesa-libGLU mtdev pulseaudio-libs xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm libxcrypt-compat alsa-plugins-pulseaudio
sudo mkdir -p /opt/resolve/graphics
sudo cp ./assets/DV_Resolve.png /opt/resolve/graphics/DV_Resolve.png
distrobox enter resolve -- sudo ./DaVinci_Resolve_Linux.run
distrobox enter resolve -- distrobox-export --app /opt/resolve/bin/resolve
echo "You still need to install opencl manually to get your GPU detected"