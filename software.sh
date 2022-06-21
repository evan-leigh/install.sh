#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
	# Terminal
	'kitty' 'imagemagick'

	# Tools
	'ripgrep' 'feh' 'lsd' 'zsh' 'man'

	# Pip
	'python-pip'

	# Tools
	'p7zip'

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
	'git' 'lazygit'

	# Browser
	'firefox'

	# Media
	'scrot' 'colorpicker'

	# PDF Viewer
	'zathura' 'zathura-pdf-mupdf'

	# Language Servers
	'lua-language-server' 'bash-language-server'
	'vscode-css-languageserver' 'vscode-html-languageserver' 'vscode-json-languageserver'

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
