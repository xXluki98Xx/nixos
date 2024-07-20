{ config, pkgs, ... }: {

  # Configure direnv and nix-direnv
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };

  imports = [
    ./zsh.nix
    ./git.nix
  ];

}