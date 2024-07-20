{ config, pkgs, ... }: {

  imports = [
    ./shell
  ];

  home = {
    username = "lramm";
    homeDirectory = "/home/lramm";

    # This value determines the home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update home Manager without changing this value. See
    # the home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.05";
  };

  # Program Settings
  programs = {

    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    # Type `<ctrl> + r` to fuzzy search your shell history
    fzf.enable = true;

    # Better `cat`
    # https://github.com/sharkdp/bat
    bat.enable = true;

    # https://github.com/aristocratos/btop
    btop.enable = true;

    # terminal gui
    lazygit.enable = true;
  };

}
