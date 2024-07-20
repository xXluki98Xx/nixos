{ pkgs, config, ... }: {

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-kubernetes-tools.vscode-kubernetes-tools
    ];
  };

}
