{ config, pkgs, ... }: {

  # Configure direnv and nix-direnv
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };

  imports = [
    ./tilix.nix
    ./zsh.nix
    ./git.nix
  ];

}