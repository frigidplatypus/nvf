{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf/v0.7";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    nvf,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      configModule = import ./config;

      customNeovim = nvf.lib.neovimConfiguration {
        modules = [configModule];
        inherit pkgs;
      };
    in {
      packages = rec {
        neovim = customNeovim.neovim;
        default = neovim;
      };
    });
}
