{ pkgs, ... }:
{
  vim.startPlugins = with pkgs.vimPlugins; [
    emmet-vim
  ];
  vim.utility.preview.markdownPreview.enable = true;
}
