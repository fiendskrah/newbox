#!/usr/bin/env bash


################
# org-protocol #
################

# https://orgmode.org/worg/org-contrib/org-protocol.html
# https://github.com/sprig/org-capture-extension

sudo apt install gconf2
gconftool-2 -s /desktop/gnome/url-handlers/org-protocol/command '/usr/local/bin/emacsclient %s' --type String
gconftool-2 -s /desktop/gnome/url-handlers/org-protocol/enabled --type Boolean true
cat > "${HOME}/.local/share/applications/org-protocol.desktop" << EOF
[Desktop Entry]
Name=org-protocol
Exec=emacsclient %u
Type=Application
Terminal=false
Categories=System;
MimeType=x-scheme-handler/org-protocol;
EOF

update-desktop-database ~/.local/share/applications/

