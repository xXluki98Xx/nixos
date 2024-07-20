{ config, pkgs, ... }: {

  home.packages = with pkgs; [
    tilix
  ];

  dconf = {
    enable = true;
    settings = {
      "com/gexperts/Tilix" = {
        "prompt-on-delete-profile" = false;
        "theme-variant" = "dark";
      };

      "com/gexperts/Tilix/profiles" = {
        "default" = "2b7c4080-0ddd-46c5-8f23-56fd3ba789d";
        "list" = [ "2b7c4080-0ddd-46c5-8f23-56fd3ba789d" ];
      };

      "com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-56fd3ba789d" = {
        "custom-command" = "zsh -i";
        "login-shell" = true;
        "terminal-title" = "";
        "use-custom-command" = true;
        "visible-name" = "Default";
      };

      "com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d" = {
        "custom-command" = "zsh -i";
        "login-shell" = true;
        "use-custom-command" = true;
        "visible-name" = "Standard";
      };
    };
  };

}
