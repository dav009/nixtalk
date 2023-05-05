let
 pkgs = import <nixpkgs> {};
in
 pkgs.runCommand "example" {} ''
        ${pkgs.python}/bin/python ${./main.py} > $out
 ''
