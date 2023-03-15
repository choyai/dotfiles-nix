{ pkgs , ... }:
{
    # List packages installed in system profile
    environment.systemPackages = with pkgs; [
        light
    ];
    services.tlp.enable = true;
}

