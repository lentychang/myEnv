# enable workspace for extended screen
# method1
gsettings set org.gnome.mutter workspaces-only-on-primary false
gsettings set org.gnome.shell.window-switcher current-workspace-only true
gsettings set org.gnome.shell.app-switcher current-workspace-only true
# method2
apt-get install gnome-tweak-tool chrome-gnome-shell
# install from this page
# https://extensions.gnome.org/extension/1160/dash-to-panel/

  # configure from GUI
  gnome-tweaks
