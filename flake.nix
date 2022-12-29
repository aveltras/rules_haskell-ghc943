{
  description = "Rules Haskell GHC 9.4.3";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlay."${system}" ];
          config.allowUnfree = true;
        };
        in {
          name = "rules_haskell-ghc943";
          inherit self nixpkgs;
          overlay = final: prev: {};
          devShell = pkgs.mkShell {
            buildInputs = [ pkgs.bazel_4 ];
          };
        });
}
