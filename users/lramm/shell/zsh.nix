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
      # navigate over auto-completion list
      zstyle ':completion:::::default' menu yes select

      zstyle ':autocomplete:*' fzf-completion yes

      # Insert unambigous prefix first before completing
      # all Tab widgets
      zstyle ':autocomplete:*complete*:*' insert-unambiguous yes
      # all history widgets
      zstyle ':autocomplete:*history*:*' insert-unambiguous yes
      # ^S
      zstyle ':autocomplete:menu-search:*' insert-unambiguous yes

      # include "." and ".." in completion output
      zstyle ':completion:*:paths' special-dirs true

      # Fix pos1, end etc. for terminal emulator
      bindkey  "^[[H"   beginning-of-line #pos1
      bindkey  "^[[F"   end-of-line #end

      bindkey "^[[1;5C" forward-word # Ctrl-RArrow
      bindkey "^[[1;5D" backward-word # Ctrl-LArrow

      bindkey -s "^[[5~" '^[[A' # Page Up
      bindkey -s "^[[6~" '^[[B' # Page Down

      bindkey  "^[[3~"  delete-char #del

      # change dir and create if not exist
      mkcd() { local dir="$1"; mkdir --parents "$dir" && cd "$dir"; }
    '';

    shellAliases = {
      ll = "ls -lah";

      g = "git";
      lg = "lazygit";
    };

    zplug = {
      enable = true;
      
      plugins = [
        { name = "zplug/zplug"; tags = [  ]; }

        { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
        { name = "~/p10k-config/"; tags = [ from:local use:.p10k.zsh ]; }

        { name = "plugins/kubectl"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/kubectl-fzf"; tags = [ from:oh-my-zsh ]; }
        { name = "plugins/helm"; tags = [ from:oh-my-zsh ]; }

        { name = "plugins/sudo"; tags = [ from:oh-my-zsh ]; }
        { name = "zdharma/fast-syntax-highlighting"; tags = [  ]; }
        { name = "zsh-users/zsh-autosuggestions"; tags = [  ]; }
        { name = "zsh-users/zsh-completions"; tags = [  ]; }
      ];
    };

  };

}
