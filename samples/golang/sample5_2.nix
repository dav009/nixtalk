let pkgs = import <nixpkgs> { };

in let
  a = pkgs.buildGoModule {
    name = "dummy";
    src = ./.;
    vendorSha256 = "sha256-pQpattmS9VmO3ZIQUFn66az8GSmB4IvYhTTCFn6SUmo=";
  };

in pkgs.mkShell {
  name = "some";
  packages = [ pkgs.jq pkgs.jdk11 a ];
  shellHook = "echo hola";
}

