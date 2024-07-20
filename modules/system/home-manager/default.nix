{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [
    # Nix Home Manager
    home-manager
  ];

}
