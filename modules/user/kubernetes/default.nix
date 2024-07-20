{ pkgs, config, ... }: {

  home = {
    
    packages = with pkgs; [
      kubectl
      k9s
    ];

    # # link configs
    # file = {
    #   ".kube" = {
    #     source = ./data;
    #     target = ".kube";
    #     recursive = true;
    #   };
    # };

  };

}
