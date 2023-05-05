## package manager

```bash
nix build nixpkgs#hello
nix run nixpkgs#cowsay -- hola
nix-shell --pure -p go_1_18
nix-shell --pure -p go_1_18 which
nix profile install nixpkgs#cowsay
nix run github:Xe/gohello
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
mkdir -p ~/.config/nix/
nano ~/.config/nix/nix.conf
add : `experimental-features = nix-command flakes`
nix profile install nixpkgs#docker
