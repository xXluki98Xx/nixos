{
  description = "Arduino IDE and Python environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05"; # Passe das an deine bevorzugte Nixpkgs-Version an
  };

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
      };
    in pkgs.mkShell {
      # Die benötigten Pakete
      buildInputs = [
	pkgs.screen
	pkgs.arduino  # Arduino IDE 2.x
      ];

      # Optional: environment variables (hier Arduino-Home setzen)
      ARDUINO_HOME = "${pkgs.arduino}/share/arduino";
    };
  };
}
