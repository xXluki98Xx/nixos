{ pkgs, config, virtualisation, ... }: {

  home.packages = with pkgs; [
    # redhat suite
    buildah
    skopeo

    # in depth inspection for layer
    dive
  ];

}
