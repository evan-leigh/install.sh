#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
	# Terminal 
	'kitty'
	'curl'
  'lazygit'
	'ripgrep'
	'feh'
  'lsd'
	'zsh'

	# Functionality 
	'sxhkd'
	'nemo'

	# Compsitor 
  'picom'

	# Notifications 
  'dunst'

	# Statusline 
  'polybar'

	# Filepicker 
  'rofi'

	# Development 
	'npm'
	'nodejs'
	'yarn'

	# Browser 
	'firefox'

	# Media 
	'scrot'
	'colorpicker'

	# PDF Viewer
	'zathura'
	'zathura-pdf-mupdf'

	# Audio
	'scrot'
	'alsa-utils'      # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
	'alsa-plugins'    # ALSA plugins
	'pulseaudio'      # Pulse Audio sound components
	'pulseaudio-alsa' # ALSA configuration for pulse audio
)

for PKG in "${PKGS[@]}"; do
	echo "INSTALLING: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
