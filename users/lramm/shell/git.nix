{ config, pkgs, ... }: {

  # Program Settings
  programs = {

    zsh.shellAliases = {
      add = "git add";
      s = "git s";
      cm = "git cm";
      amend = "git amend";
      reword = "git reword";
      undo = "git undo";
      rh = "git rh";
    };

    # Git Settings
    git = {
      enable = true;

      aliases = {
        s = "status";
        cm = "commit --message";
        amend  = "commit --amend --no-edit";
        reword = "commit --amend --message";
        undo = "reset HEAD~1";
        rh = "reset --hard";
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
