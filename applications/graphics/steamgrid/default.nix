# This file was generated by https://github.com/kamilchm/go2nix v1.3.0
{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "steamgrid-unstable-${version}";
  version = "2020-01-28";
  rev = "0318b952ba65f392d2b80407998e563f848504d9";

  goPackagePath = "github.com/boppreh/steamgrid";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/boppreh/steamgrid";
    sha256 = "0nnnwwqg440gdswgak99yqr9ndp82cqh2dgpw14hmxnwi6pi62m1";
  };

  goDeps = ./deps.nix;

  # TODO: add metadata https://nixos.org/nixpkgs/manual/#sec-standard-meta-attributes
  meta = {
  };
}
