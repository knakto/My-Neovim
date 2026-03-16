{ pkgs, ... }:
{
  vim.telescope = {
    enable = true;
    setupOpts.defaults.layout_config = {
      horizontal.prompt_position = "bottom";
    };
    extensions = [
      {
        name = "fzf";
        packages = [ pkgs.vimPlugins.telescope-fzf-native-nvim ];
        setup = {
          fzf = {
            fuzzy = true;
          };
        };
      }
    ];
  };
}
