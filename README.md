# first demo

# using existing packages
nix build nixpkgs#hello
nix run nixpkgs#cowsay -- hola
nix-shell   --pure -p go_1_18
nix-shell   --pure -p go_1_18 which
nix profile install github:oxalica/nil
nix profile install nixpkgs#cowsay
nix run github:Xe/gohello
which go-hello
nix build nixpkgs#pkgsCross.XX.hello

## derivations

nix build -f sample.nix
nix show-derivation -f sample3.nix
nix repl

## repl

```nix
:l <nixpkgs>
nixpkgs = import <nixpkgs>
:docs builtins.readFile
python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.requests])
:b python3.withPackages(p : [p.numpy p.requests])
:b mkShell{name="some";packages=[jq];}
# cd /path/to/myshell
# source activate
```

```nix
:l <nixpkgs>
nixpkgs = import <nixpkgs>
:b mkShell{name="some";packages=[jq];}
```

# misc
nix-store --gc

# flake
nix flake show
nix develop
nix run .
nix run nixpkgs#darwin.builder
nix build .#docker

# todo:
- docker from the repl
- docker from simple nix file


## Nix os
nix-rebuild switch..
