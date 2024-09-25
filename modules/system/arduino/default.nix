{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [
    arduino-ide
    arduino-cli
  ];
}
