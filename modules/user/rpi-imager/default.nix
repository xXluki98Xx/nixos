{ pkgs, config, ... }: {

  home.packages = with pkgs; [
    rpi-imager
  ];

}
