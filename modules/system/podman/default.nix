{ pkgs, config, ... }: {
    
  virtualisation.oci-containers.backend = "podman";
  virtualisation.oci-containers.containers = {
    container-name = {
      image = "container-image";
      autoStart = true;
      ports = [ "127.0.0.1:1234:1234" ];
    };
  };
}

# { pkgs, config, ... }: {
    
#   virtualisation.oci-containers = {
#     backend = "podman";
#   };

# }
