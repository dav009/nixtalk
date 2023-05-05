let
 pkgs = import <nixpkgs> {};
in
 pkgs.runCommand "example" {} ''
        ${pkgs.python}/bin/python -c "print('hello from python')" > $out
 ''
