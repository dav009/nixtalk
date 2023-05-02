# first demo

# using existing packages
nix build nixpkgs#hello
nix run nixpkgs#cowsay -- hola
nix 

## derivations

nix build -f sample.nix
nix show-derivation -f sample3.nix
nix repl

```nix
:l <nixpkgs>
nixpkgs = import <nixpkgs>
:docs builtins.readFile
python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.requests])
:b python3.withPackages(p : [p.numpy p.requests])
```

```nix
:l <nixpkgs>
nixpkgs = import <nixpkgs>
:b mkShell{name="some";packages=[jq];}
```


# flake
nix flake show
nix develop
nix run .
nix run nixpkgs#darwin.builder
nix build .#docker

# todo:
- docker from the repl
- docker from simple nix file
