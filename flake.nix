{
  description = "Build zcashd from source using the officially pinned dependencies from upstream.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.03";

    zcashd.url = "github:zcash/zcash/v4.3.0";
    zcashd.flake = false;
  };

  outputs = { self, nixpkgs, zcashd }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "zcashd";
        src = self;
        buildPhase = ''
          set -x
          echo WHEEEEEEEEEEEEEEEEE
          ls -ld "${zcashd}"
          ls -l "${zcashd}"
        '';
        installPhase = "mkdir -v $out/";
      };
  };
}
