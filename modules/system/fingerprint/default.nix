{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [
    fprintd
  ];

  # enable fingerprint
  services.fprintd.enable = true;

}
