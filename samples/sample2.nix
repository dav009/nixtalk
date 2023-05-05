let
 pkgs = import <nixpkgs> {};
in
pkgs.runCommand "directory" {} ''
        mkdir $out
        
        echo "cat" > $out/cat
        echo "dog" > $out/dog
 ''
