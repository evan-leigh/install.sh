#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
	# Terminal
	'kitty' 'ripgrep' 'feh' 'lsd' 'zsh'

	# Tools
	'xdo' 'xdotool' 'p7zip'

	# Building
	'unzip' 'ninja' 'cmake'

	# File parser
	'tree-sitter'

	# Functionality
	'sxhkd' 'rofi'

	# Compsitor
	'picom'

	# Notifications
	'dunst'

	# Statusline
	'polybar'

	# Development
	'npm' 'nodejs' 'yarn'

	# Git
	'git' 'lazygit'

	# Browser
	'firefox'

	# Media
	'scrot' 'colorpicker'

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
