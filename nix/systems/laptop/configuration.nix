# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
    imports =
        [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
        ./packages.nix
        ./services.nix
        ];

    # Use the systemd-boot EFI boot loader.
    boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
    };

    networking = {
        networkmanager.enable = true;
        hostName="nixlap";
    };
    
    nix.settings.experimental-features= [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;

    #Set your time zone.
    time.timeZone = "Asia/Bangkok";

    users = {
        defaultUserShell = pkgs.zsh;
        groups = {
            choyai = {};
        };
        users.choyai = {
            isNormalUser = true;
            initialPassword = "gigachad";
            extraGroups = [ "wheel" "video" "libvirtd" "choyai" ];
            packages = with pkgs; [
            ];
        };
    };

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).

    system.stateVersion = "23.05"; # Did you read the comment?
}

