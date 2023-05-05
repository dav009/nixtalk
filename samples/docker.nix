let pkgs = import <nixpkgs> { };
    pkgslinux = import <nixpkgs> { system="x86_64-linux"; };
in pkgs.dockerTools.buildLayeredImage {
  name = "nix_sample";
  config = { CMD = [ "${pkgslinux.python}/bin/python" "-c" "print(\"hello\")" ]; };
}
