{
  description = "lRamm's Home Manager flake";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = { self, nixpkgs, home-manager, ... }:

    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };

     in {
      # configurations
      nixosConfigurations = {
        framework13 = nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            ./hosts/framework13-intel11
            ./modules/system/garbage-collector
            ./modules/system/nix-flakes
            ./modules/system/home-manager
          ];
        };
      };

      homeConfigurations = {
        lramm = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          # Specify your home configuration modules here, for example,
          # the path to your user/username/default.nix.
          modules = [
            ./users/lramm
          ];
        };
      };
    };
}
