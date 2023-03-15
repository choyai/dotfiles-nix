{ pkgs , ... }:
{
    # List packages installed in system profile
    environment.systemPackages = with pkgs; [
        brave
        cargo
        compsize
        curl
        firefox
        foot
        gcc
        gimp
        git
        grim
        home-manager
        htop
        lua
        mpv
        neovim
        nodejs
        pavucontrol
        powertop
        pulseaudio #Needed for volume keys
        python3
        slurp
        swaybg
        swaylock
        swayidle
        tdesktop
        tree-sitter
        unzip
        vim 
        waybar
        wget
        wl-clipboard
        wofi
        xfce.thunar
        zip
    ];
    
    #Fonts
    fonts.fonts = with pkgs; [
        (nerdfonts.override { fonts = ["JetBrainsMono"]; })
    ];

    #Overlays/Overrides
    nixpkgs.overlays = [
        (self: super: {
         waybar = super.waybar.overrideAttrs (oldAttrs: {
                 mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
                 });
         })
    ];

    #Programs
    environment.pathsToLink = [ "/share/zsh" ];
}

