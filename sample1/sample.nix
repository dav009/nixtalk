let
 pkgs = import <nixpkgs> {};
in
 pkgs.runCommand "example" {} ''
        echo "hello" > $out
 ''
