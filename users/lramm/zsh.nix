{ config, pkgs, ... }: {

  # Import p10k config
  home.file.p10kconf = {
    source = ./p10k.theme;
    target ="p10k-config/.p10k.zsh";
  };

  programs.zsh = {
    enable = true;

    enableCompletion = true;

    # Definiere benutzerdefinierte Funktionen
    initExtra = ''
      # change dir and create if not exist
      mkcd() { local dir="$1"; mkdir --parents "$dir" && cd "$dir"; }
    '';

    shellAliases = {
      ll = "ls -lah";
    };

    zplug = {
      enable = true;
      
      plugins = [
        { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
        { name = "~/p10k-config/"; tags = [ from:local use:.p10k.zsh ]; }

        { name = "plugins/kubectl"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/kubectl-fzf"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/helm"; tags = [ from:oh-my-zsh ]; }
      ];
    };

  };

}
