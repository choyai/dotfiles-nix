{ pkgs , ... }:
{
    # List packages installed in system profile
    environment.systemPackages = with pkgs; [
        cargo
        compsize
        curl
        dconf
        gcc
        git
        home-manager
        htop
        light
        lua
        neovim
        nodejs
        powertop
        pulseaudio #Needed for volume keys even with pipewire
        python3
        tree-sitter
        unzip
        vim 
        virt-manager
        wget
        wl-clipboard
        zip
    ];
    
    #Fonts
    fonts.fonts = with pkgs; [
        (nerdfonts.override { fonts = ["JetBrainsMono"]; })
    ];

    #Programs
    environment.pathsToLink = [ "/share/zsh" ];
    programs.dconf.enable = true;

}

