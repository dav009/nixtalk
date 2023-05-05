let pkgs = import <nixpkgs> { };

in 
   pkgs.buildGoModule {
    name = "dummy";
    src = ./.;
    vendorSha256 = "sha256-pQpattmS9VmO3ZIQUFn66az8GSmB4IvYhTTCFn6SUmo=";
  }


