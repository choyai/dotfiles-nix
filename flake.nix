{
    description = "System Config";
    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager/master";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };
    outputs = { nixpkgs,home-manager,... }: 
        let 
            system = "x86_64-linux";
            pkgs = import nixpkgs {
                inherit system;
                config = { allowUnfree = true; };
            };
            lib = nixpkgs.lib;
        in {
            hm = {
                justinlime1999 = home-manager.lib.homeManagerConfiguration{
                    inherit system pkgs;
                    username = "justinlime1999";
                    homeDirectory = "/home/justinlime1999";
                    configuration = {
                        imports = [
                            ./nix/users/main/home.nix 
                        ];
                    };
                };
            };
            nixosConfigurations = {
                nixdesk = lib.nixosSystem {
                    inherit system;
                    modules = [
                        ./nix/systems/main/configuration.nix
                    ];
                };
                nixlaptop = lib.nixosSystem {
                    inherit system;
                    modules = [
                        ./nix/systems/laptop/configuration.nix
                    ];
                };
            };
        };
}
