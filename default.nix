# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> {} }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  dosbox-staging = pkgs.callPackage ./pkgs/misc/emulators/dosbox-staging { };
  #lobase = pkgs.callPackage ./pkgs/tools/misc/lobase { };
  qdl = pkgs.callPackage ./pkgs/development/mobile/qdl { };
  ubase = pkgs.callPackage ./pkgs/tools/misc/ubase { };
  samrewritten = pkgs.callPackage ./pkgs/tools/misc/samrewritten { };
  steamgrid = pkgs.callPackage ./pkgs/applications/graphics/steamgrid { };
  ubase = pkgs.callPackage ./pkgs/tools/misc/ubase { };
}
