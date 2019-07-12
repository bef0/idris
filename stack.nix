{ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
    inherit ghc;
    src = ./.;
    name = "idris";
    buildInputs = [ clang libiconv zlib bzip2 ];
}
