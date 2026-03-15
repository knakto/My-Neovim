{ pkgs, ... }:
{
  vim.startPlugins = with pkgs.vimPlugins; [
    emmet-vim
  ];
}
