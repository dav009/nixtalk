# nix-shell --pure sample6.nix
let pkgs = import <nixpkgs> { };
in pkgs.mkShell{name="some";
                packages=[pkgs.jq pkgs.jdk11];
                shellHook="echo hola";
               }

