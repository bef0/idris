{ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
    inherit ghc;
    src = ./.;
    name = "main";
    buildInputs = [ clang libiconv zlib bzip2 ];
}