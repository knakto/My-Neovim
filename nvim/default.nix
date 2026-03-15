{ pkgs, ... }:
{
  imports = [
    ./theme.nix
    ./lsp.nix
    ./plugins.nix
    ./keybinds.nix
  ];

  config.vim.clipboard = {
    enable = true;
    providers.wl-copy.enable = true;
  };

  config.vim.options = {
    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;
  };
}
