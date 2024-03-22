{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      imports = [
        inputs.treefmt-nix.flakeModule
      ];
      perSystem = {
        config,
        pkgs,
        ...
      }: {
        treefmt.config = {
          projectRootFile = "flake.nix";
          programs = {
            alejandra.enable = true;
            clang-format.enable = true;
          };
        };

        #the override changes gcc for clang
        devShells.default = pkgs.mkShell.override {stdenv = pkgs.clangStdenv;} {
          inputsFrom = [config.treefmt.build.devShell];

          packages = with pkgs; [
            nil
            godot_4
          ];
        };
      };
    };
}

