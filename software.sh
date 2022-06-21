#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
	# Terminal 
	'kitty'
	'ripgrep'
	'feh'
  'lsd'
	'zsh'

  # Tools
  'xdo'
  'xdotool'

  # Building
  'unzip'
  'ninja'
  'cmake'
  'tree-sitter'


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

  # Git
  'git'
  'github-cli'
  'lazygit'

	# Browser 
	'firefox'

	# Media 
	'scrot'
	'colorpicker'

	# PDF Viewer
	'zathura'
	'zathura-pdf-mupdf'

	# Icons 
  'ttf-nerd-fonts-symbols'

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
