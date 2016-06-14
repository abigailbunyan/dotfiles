[ -r "$HOME/.profile" ] && source "$HOME/.profile"
[ -r "$HOME/.bashrc" ] && source "$HOME/.bashrc"

if [ -e /home/abigail/.nix-profile/etc/profile.d/nix.sh ]; then . /home/abigail/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
