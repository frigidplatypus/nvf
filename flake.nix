{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=e1a23eea2ada0132be3eb9f5c8e2e6405b33625b"; # https://nixpk.gs/pr-tracker.html?pr=349783
    nvf = {
      url = "github:notashelf/nvf/v0.7";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nvf, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      configModule = import ./config;

      customNeovim = nvf.lib.neovimConfiguration {
        modules = [ configModule ];
        inherit pkgs;
      };
    in
    { packages.${system}.default = customNeovim.neovim; };
}

