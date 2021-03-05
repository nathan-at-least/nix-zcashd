{
  description = "Build zcashd from source using the officially pinned dependencies from upstream.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.03";

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "zcashd";
        src = self;
        buildPhase = "echo; echo; echo WHEEEEEEEEEEEEEEEEE; echo; echo";
        installPhase = "mkdir -v $out/";
      };
  };
}
