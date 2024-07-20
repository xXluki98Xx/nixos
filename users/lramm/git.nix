{ config, pkgs, ... }: {

  # Program Settings
  programs = {

    zsh.shellAliases = {
      add = "git add";
      s = "git s";
      cm = "git cm";
    };

    # Git Settings
    git = {
      enable = true;
      aliases = {
        s = "status";
        cm = "commit --message";
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
