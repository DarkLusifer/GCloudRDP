#================================================================================================================#
#!/bin/bash

# Download and install CRD and GChrome
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i chrome-remote-desktop_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

# Install necessary packages
sudo DEBIAN_FRONTEND=noninteractive apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

# Configure Chrome Remote Desktop to use XFCE session
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

# Disable lightdm service
sudo systemctl disable lightdm.service

# Output a message indicating the script has finished
echo "Setup complete. You can now use Chrome Remote Desktop with XFCE desktop environment."
echo "Go to this url and get Debian ssh script https://remotedesktop.google.com/headless and send it here."
echo "Script by DARK LUSIFER"

#by @about_darklusifer
#================================================================================================================#
