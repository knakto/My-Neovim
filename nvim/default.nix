{ pkgs, ... }:
{
  imports = [
    ./theme.nix
    ./lsp.nix
    ./plugins.nix
  ];

  config.vim.options = {
    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;
  };
}
