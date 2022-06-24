#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
	# Terminal
	'kitty' 'imagemagick'

	# Terminal Tools
	'ripgrep' 'feh' 'lsd' 'zsh' 'man' 'glow' 'p7zip'

	# Pip
	'python-pip'

	# Xorg
	'xdo' 'xdotool' 'xclip' 'xsel'

	# Building
	'unzip' 'ninja' 'cmake'

	# File parser
	'tree-sitter'

	# File Explorer
	'ranger' 'w3m'

	# Functionality
	'sxhkd' 'rofi'

	# Compsitor
	'picom'

	# Notifications
	'dunst' 'libnotify'

	# Statusline
	'polybar'

	# Development
	'npm' 'nodejs' 'yarn'

	# Git
	'git' 'lazygit' 'github-cli'

	# Browser
	'firefox'

	# Media
	'scrot' 'gpick'

	# PDF Viewer
	'zathura' 'zathura-pdf-mupdf'

	# Language Servers
	'lua-language-server' 'bash-language-server'

	# Formatters
	'stylua' 'shmft'

	# Icons
	'ttf-nerd-fonts-symbols'

	# Audio
	'scrot' 'alsa-utils' 'alsa-plugins' 'pulseaudio' 'pulseaudio-alsa'
)

for PKG in "${PKGS[@]}"; do
	echo "INSTALLING: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
