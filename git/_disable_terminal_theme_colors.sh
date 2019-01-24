echo Disable terminal theme colors so is dark {simple!}

DEFAULT_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList default`;
DEFAULT_PROFILE=${DEFAULT_PROFILE:1:-1};

echo $DEFAULT_PROFILE

dconf write /org/gnome/terminal/legacy/profiles:/:$DEFAULT_PROFILE/use-theme-colors false

# PROBLEM: these keys should also be removed (that is what the terminal dialog does)
# dconf reset /org/gnome/desktop/interface/cursor-theme
# dconf reset /org/gnome/desktop/interface/gtk-theme

# tools - to show all settings (can dump to text, then diff)
# dconf dump /

# related - gsettings
# gsettings list-recursively
