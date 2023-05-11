## package manager

This is a recorded introduction talk about Nix and its package manager. You can find the slides and samples in this repo.

- Recording: https://www.youtube.com/watch?v=uj5YU74IUvI


```bash
nix build nixpkgs#hello
nix run nixpkgs#cowsay -- hola
nix-shell --pure -p go_1_18
nix-shell --pure -p go_1_18 which
nix profile install nixpkgs#cowsay
nix-shell --pure -p python310 aws python310Packages.numpy
```

with flakes:
```bash
nix run github:dav009/nixsample 
nix develop github:dav009/nixsample
nix build github:dav009/nixsample
nix build github:dav009/nixsample#docker
```

## derivations

```bash
nix build -f sample.nix
nix show-derivation -f sample3.nix
nix repl
```

## repl

```bash
:l <nixpkgs>
nixpkgs = import <nixpkgs>
:docs builtins.readFile
python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.numpy])
:b python3.withPackages(p : [p.requests])
:b python3.withPackages(p : [p.numpy p.requests])
:b mkShell{name="some";packages=[jq];}
```

## misc

```bash
nix-store --gc
```

## flakes

```bash
nix flake show
nix develop
nix run .
# templates
nix flake show  github:NixOS/templates
nix flake init -t github:NixOS/templates#go-hello
nix flake init -t github:nix-community/gomod2nix#app
```

## ec2 instance

```bash
installation instructions: https://nixos.org/download.html
mkdir -p ~/.config/nix/
nano ~/.config/nix/nix.conf
add : `experimental-features = nix-command flakes`
nix profile install nixpkgs#docker
```
