{ pkgs , ... }:
{
    # List packages installed in system profile
    environment.systemPackages = with pkgs; [
        light
    ];

    programs.light.enable = true;
    services.tlp.enable = true;
}
