{ pkgs, config, ... }: {

  # Documentation: https://itsfoss.com/things-to-do-after-installing-nixos/
  # Can be checked with:
  # ```systemctl list-timers```

  # Automatic Garbage Collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

}
