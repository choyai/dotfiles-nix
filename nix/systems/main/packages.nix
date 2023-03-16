{ pkgs , ... }:
let
    vimcustom = pkgs.vim_configurable.customize {
        vimrcConfig.customRC = ''
           set relativenumber
           set number
           set mouse=r
           set autoindent
           set tabstop=4
           set nowrap
           set softtabstop=4
           set shiftwidth=4
           set smarttab
           set clipboard^=unnamed,unnamedplus
           set undodir=~/.config/vim/.undo
           set directory=~/.config/vim/.swp
           set splitbelow
           set splitright
           set noswapfile
           set undofile
           set nobackup
           set nocursorline
           set smartindent
           set smartcase
           set termguicolors
           set expandtab
           set scrolloff=8
           set updatetime=50
           set expandtab
           set guicursor=""
           set ignorecase
           set cursorline
           syntax enable

           :hi CursorLineNr ctermbg=black term=none cterm=none guibg=Grey20
           :hi CursorLine ctermbg=black term=none cterm=none guibg=Grey20
           :hi Visual guibg=Grey20

           :noremap <Space> <Nop>
           let mapleader=" "
           let localleader=" "

           :nnoremap <S-h> :vertical resize -2<CR>
           :nnoremap <S-j> :resize -2<CR>
           :nnoremap <S-k> :resize +2<CR>
           :nnoremap <S-l> :vertical resize +2<CR>

           :inoremap jj <ESC> 

           :vnoremap <S-h> < gv
           :vnoremap <S-j> :m '>+1<CR>gv=gv
           :vnoremap <S-k> :m '<-2<CR>gv=gv
           :vnoremap <S-l> > gv

           :nnoremap <leader>d :Lex 20<CR>
        '';
    };
in
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
        vimcustom
        virt-manager
        wget
        wl-clipboard
        zip
    ];
    
    environment.variables = { EDITOR = "vim"; };

    #Fonts
    fonts.fonts = with pkgs; [
        (nerdfonts.override { fonts = ["JetBrainsMono"]; })
    ];

    #Programs
    programs.dconf.enable = true;
    environment.pathsToLink = [ "/share/zsh" ];
    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;
        enableCompletion = true;
        autosuggestions.enable = true;
        setOptions = ["PROMPT_SUBST" "appendhistory"];
        shellInit = ''
            HISTFILE=~/.zsh_history
            HISTSIZE=10000
            SAVEHIST=10000
            touch ~/.zshrc
            '';
        promptInit = ''
            parse_git_branch() {
                git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
            }
            PROMPT='%B%F{183}%m%f%F{111}[%f%F{158}%~%f%F{111}]%f%F{111}$(parse_git_branch)%f %F{183}>%f%f%b '
            '';
    };
}

