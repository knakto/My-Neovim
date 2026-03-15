{ pkgs, ... }:
{
  imports = [
    ./theme.nix
    ./lsp.nix
    ./plugins.nix
  ];
}
