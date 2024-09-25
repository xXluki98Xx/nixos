{ pkgs, config, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    rootless = {
      enable = false;
      setSocketVariable = true;
    };
  };

}
