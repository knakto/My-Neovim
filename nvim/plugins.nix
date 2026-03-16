{ pkgs, ... }:
{
  vim = {
    visuals = {
      fidget-nvim.enable = true;
      nvim-cursorline.enable = true;
      nvim-web-devicons.enable = true;
    };
    utility = {
      preview.markdownPreview.enable = true;
      diffview-nvim.enable = true;
      images.image-nvim = {
        enable = true;
        setupOpts.backend = "kitty";
      };
      nix-develop.enable = true;
    };
    startPlugins = with pkgs.vimPlugins; [
      emmet-vim
    ];
  };
}
