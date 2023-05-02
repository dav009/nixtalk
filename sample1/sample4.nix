let
 pkgs = import <nixpkgs> {};
in
 pkgs.runCommand "example" {} ''
        ${pkgs.python}/bin/python -c "import datetime; print(datetime.datetime.now())" > $out
 ''
