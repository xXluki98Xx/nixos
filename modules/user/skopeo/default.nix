{ pkgs, config, ... }: {

  home.packages = with pkgs; [
    skopeo
  ];

}
