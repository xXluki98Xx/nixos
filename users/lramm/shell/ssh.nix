{ config, pkgs, ... }: {

  programs.ssh = {
    enable = true;

    # forwardAgent = false;
    # hashKnownHosts = false;

    controlMaster = "auto";
    controlPath = "~/.ssh/%r@%h:%p";
    controlPersist = "10m";

    extraConfig = ''
      strictHostKeyChecking accept-new
      IdentitiesOnly yes
    '';

  };

  # # link keys
  # home.file = {
  #   ".ssh" = {
  #     source = ./data;
  #     target = ".ssh";
  #     recursive = true;
  #   };
  # };

}
