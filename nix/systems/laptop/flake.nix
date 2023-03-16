# flake.nix
{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        hyprland.url = "github:hyprwm/Hyprland";
    };
    outputs = {nixpkgs, hyprland, ...}: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            # ...
            modules = [
                hyprland.nixosModules.default
                ./configuration.nix
                {programs.hyprland.enable=true;}
                # ...
            ];
        };
    };
}
