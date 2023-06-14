!#/usr/bin/env bash

sudo cp nix/systems/laptop/* /etc/nixos/

cp .config/* ~/.config/

mkdir -p ~/.config/nixpkgs

cp nix/home/users/home.nix ~/.config/nixpkgs/
