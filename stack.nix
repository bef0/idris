{ghc}:
with (import <nixpkgs> {});

let libs = [clang libiconv bzip2 gmp libffi ncurses nodejs perl zlib];
    core = lib.optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [Cocoa CoreServices]);
in  haskell.lib.buildStackProject {
    inherit ghc;
    src = ./.;
    name = "idris";
    buildInputs = builtins.concatLists [core libs];
}
