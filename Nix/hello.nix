{ pkgs ? import <nixpkgs> {} }:
pkgs.runCommand "hello" {} ''
  echo "Hello, World!"
''
