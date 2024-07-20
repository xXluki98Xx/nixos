{ config, pkgs, ... }: {

  # Program Settings
  programs = {

    # Git Settings
    git = {
      enable = true;
      aliases = {
      };
      extraConfig = {
        user = {
          email = "lramm.dev@gmail.com";
          name = "lRamm";
        };
      };
    };

  };

}
