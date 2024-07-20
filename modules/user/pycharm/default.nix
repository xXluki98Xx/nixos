{ pkgs, config, ... }: {

  home.packages = with pkgs; [
    jetbrains.pycharm-community
  ];

}
