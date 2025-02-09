# Kitty -> Terminal
mkdir -p ~/.config/kitty
ln -sf "$SETUP_CONFIGURATIONS/kitty/kitty.conf" ~/.config/kitty/kitty.conf

# Rofi -> Launchers and Power menu
mkdir -p ~/.config/rofi
ln -sf "$SETUP_CONFIGURATIONS/rofi/config.rasi" ~/.config/rofi/config.rasi

# Dunst -> Notifications
mkdir -p ~/.config/dunst
ln -sf "$SETUP_CONFIGURATIONS/dunst/dunstrc" ~/.config/dunst/dunstrc

# Polybar -> Bars
mkdir -p ~/.config/polybar
ln -sf "$SETUP_CONFIGURATIONS/polybar/launch.sh" ~/.config/polybar/launch.sh
ln -sf "$SETUP_CONFIGURATIONS/polybar/toggle-main-bar.sh" ~/.config/polybar/toggle-main-bar.sh
ln -sf "$SETUP_CONFIGURATIONS/polybar/toggle-workspace-bar.sh" ~/.config/polybar/toggle-workspace-bar.sh

# Picom -> Compositor
ln -sf "$SETUP_CONFIGURATIONS/picom/picom.conf" ~/.config/picom.conf
ln -sf "$SETUP_CONFIGURATIONS/picom/picom-rules.conf" ~/.config/picom-rules.conf
ln -sf "$SETUP_CONFIGURATIONS/picom/picom-animations.conf" ~/.config/picom-animations.conf

# I3wm -> Window manager
mkdir -p ~/.i3
ln -sf "$SETUP_CONFIGURATIONS/.i3/config" ~/.i3/config

