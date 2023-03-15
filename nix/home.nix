{ config, pkgs, ... }:
let 
    font = "JetBrainsMono Nerd Font";
in
{
    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    home.username = "justinlime1999";
    home.homeDirectory = "/home/justinlime1999";

    #environment.pathsToLink = [ "/share/zsh" ];

    home.packages = with pkgs; [
        neofetch
    ];
    gtk = {
        enable = true;
        font.name = "${font} 12";
        iconTheme = {
            name = "Papirus-Dark";
            package = pkgs.papirus-icon-theme;
        };
        cursorTheme = {
            name = "Numix-Cursor";
            package = pkgs.numix-cursor-theme;
        };
        theme = {
            name = "rose-pine";
            package = pkgs.rose-pine-gtk-theme;
        };
        gtk3.extraConfig = {
            Settings = ''
                gtk-application-prefer-dark-theme=1
                '';
        };
        gtk4.extraConfig = {
            Settings = ''
                gtk-application-prefer-dark-theme=1
                '';
        };
    };
    qt = {
        enable = true;
        platformTheme = "gtk";
    };
    programs = {
        foot = {
            enable = true;
            server.enable = true;
            settings = {
                main = {
                    font = "${font}:size=12";
                    pad = "25x15 center";
                    dpi-aware = "no";
                };
                colors = {
                    alpha=".95";
                    background="11111B";
                    regular0="11111B";  # black
                    regular1="ff5555";  # red
                    regular2="afffd7";  # green
                    regular3="f1fa8c";  # yellow
                    regular4="87afff";  # blue
                    regular5="bd93f9";  # magenta
                    regular6="8be9fd";  # cyan
                    regular7="f8f8f2";  # white
                    bright0="2d5b69";   # bright black
                    bright1="ff665c";   # bright red
                    bright2="84c747";   # bright green
                    bright3="ebc13d";   # bright yellow
                    bright4="58a3ff";   # bright blue
                    bright5="ff84cd";   # bright magenta
                    bright6="53d6c7";   # bright cyan
                    bright7="cad8d9";   # bright white
                };
            };
        };
        waybar = {
            enable = true;
            settings.mainBar = {
                height = 35;
                spacing = 4;
                modules-left = ["wlr/workspaces" "sway/mode" "sway/scratchpad" "custom/media"];
                modules-right = ["pulseaudio" "network" "cpu" "memory" "temperature" "battery" "battery#bat2" "clock" "tray"];
            };
            style = ''
                * {
                    /* `otf-font-awesome` is required to be installed for icons */
                    font-family: ${font}, FontAwesome, Roboto, Helvetica, Arial, sans-serif;
                    font-size: 16px;
                    /* color: #bd93f9; */
                    color: #bd93f9;
                }

                window#waybar {
                    background-color: rgba(43, 48, 59, 0);
                    border-bottom: 3px solid rgba(100, 114, 125, 0);
                    transition-property: background-color;
                    transition-duration: .5s;
                }

                window#waybar.hidden {
                    opacity: 0.2;
                }

                /*
                window#waybar.empty {
                    background-color: transparent;
                }
                window#waybar.solo {
                    background-color: #FFFFFF;
                }
                */

                window#waybar.termite {
                    background-color: #3F3F3F;
                }

                window#waybar.chromium {
                    background-color: #000000;
                    border: none;
                }

                button {
                    /* Use box-shadow instead of border so the text isn't offset */
                    box-shadow: inset 0 -3px transparent;
                    /* Avoid rounded borders under each button name */
                    border: none;
                    border-radius: 0;
                }

                /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
                button:hover {
                    background: inherit;
                    box-shadow: inset 0 -3px #ffffff;
                }

                #workspaces button {
                    padding: 5px;
                    background-color: transparent;
                    color: #bd93f9; 
                }

                #workspaces button:hover {
                    background: rgba(0, 0, 0, 0.2);
                }

                #workspaces button.active{
                    color: #bd93f9;
                    border-radius: 10px;
                    box-shadow: inset 0 -3px #bd93f9;
                }

                #workspaces button.urgent {
                    background-color: #eb4d4b;
                }

                #mode {
                    background-color: #64727D;
                    border-bottom: 3px solid #ffffff;
                }

                #clock,
                #battery,
                #cpu,
                #memory,
                #disk,
                #temperature,
                #backlight,
                #network,
                #pulseaudio,
                #wireplumber,
                #custom-media,
                #tray,
                #mode,
                #idle_inhibitor,
                #scratchpad,
                #mpd,
                #window,
                #workspaces {
                    margin-top: .70rem;
                    background: #11111D; /* rgba(26,26,26,.9); */
                    padding: 0 1rem;
                    border-radius: .75rem;
                }
                #battery{
                    padding-right: 1.75rem;
                }
                #network{
                    padding-right: 1.5rem;
                }
                #cpu{
                    padding-right: 1.25rem;
                }
                #memory{
                    padding-right: 1.25rem;
                }
                #tray{
                    margin-right: .5rem;
                }
                /* If workspaces is the leftmost module, omit left margin */
                .modules-left > widget:first-child > #workspaces {
                    margin-left: .9rem;
                }

                .modules-right{
                    margin-right: .70rem;
                }

                /* If workspaces is the rightmost module, omit right margin */
                .modules-right > widget:last-child > #workspaces {
                    margin-right: .9rem;
                }

                @keyframes blink {
                    to {
                        background-color: #ffffff;
                        color: #000000;
                    }
                }

                #battery.critical:not(.charging) {
                    animation-name: blink;
                    animation-duration: .5s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                    animation-direction: alternate;
                }

                #custom-media {
                    min-width: 100px;
                }

                #tray > .passive {
                    -gtk-icon-effect: dim;
                }

                #tray > .needs-attention {
                    -gtk-icon-effect: highlight;
                }

                #language {
                    padding: 0 5px;
                    margin: 0 5px;
                    min-width: 16px;
                }

                #keyboard-state {
                    padding: 0 0px;
                    margin: 0 5px;
                    min-width: 16px;
                }

                #keyboard-state > label {
                    padding: 0 5px;
                }

                #scratchpad.empty {
                    background-color: transparent;
                }
                '';
        };
        zsh = {
            enable = true;
            enableAutosuggestions = true;
            enableCompletion = true;
            enableSyntaxHighlighting = true;
            history.path = "~/.zsh_history";
            initExtra = ''
            setopt appendhistory
            parse_git_branch() {
              git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
            }
            setopt PROMPT_SUBST
            PROMPT='%B%F{183}%m%f%F{111}[%f%F{158}%~%f%F{111}]%f%F{111}$(parse_git_branch)%f %F{183}>%f%f%b '
            '';
            #defaultKeymap = "vicmd";
        };
    };
    home.file = {
        ".config/wofi/style.css".text = ''
        *{
        font-family: ${font},monospace;
        }

        window {
        margin: 0px;
        border: 2px solid #bd93f9;
        background-color: #11111D;
        border-radius: 20px;
        }

        #input {
        margin: 5px;
        border: none;
        color: #F5F5F5;
        background-color: #11111D;
        border: 2px solid #bd93f9;
        border-radius: 10px;
        margin: 10px;
        }

        #inner-box {
        margin: 5px;
        border: none;
        background-color: #11111D;
        border-radius: 20px;
        }

        #outer-box {
        margin: 5px;
        border: none;
        background-color: #11111D;
        border-radius: 20px;
        }

        #scroll {
        margin: 0px;
        border: none;
        }

        #text {
        margin: 5px;
        border: none;
        color: #bd93f9;
        } 
        #text:selected{
        color:#F5F5F5;
        }

        #entry:selected {
        background-color: #bd93f9;
        }
        '';
        # regular1=ff5555  # red
        # regular2=afffd7  # green
        # regular3=f1fa8c  # yellow
        # regular4=87afff  # blue
        # regular5=bd93f9  # magenta
        # regular6=8be9fd  # cyan
        # regular7=f8f8f2  # white
        # bright0=2d5b69   # bright black
        # bright1=ff665c   # bright red
        # bright2=84c747   # bright green
        # bright3=ebc13d   # bright yellow
        # bright4=58a3ff   # bright blue
        # bright5=ff84cd   # bright magenta
        # bright6=53d6c7   # bright cyan
        # bright7=cad8d9   # bright white
        # '';
        
        # ".zshrc".text = '' 
        # # Lines configured by zsh-newuser-install
        # HISTFILE=~/.zsh_history
        # HISTSIZE=10000
        # SAVEHIST=10000
        # setopt appendhistory
        # parse_git_branch() {
        #     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
        # }
        # setopt PROMPT_SUBST
        # PROMPT='%B%F{183}%m%f%F{111}[%f%F{158}%~%f%F{111}]%f%F{111}$(parse_git_branch)%f %F{183}>%f%f%b '
        # # End of lines configured by zsh-newuser-install
        # '';
    };

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    home.stateVersion = "22.11";

    }
