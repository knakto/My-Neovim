{ pkgs, ... }:
{
  vim.terminal.toggleterm = {
    enable = true;
    mappings.open = "<C-\\>";
    setupOpts = {
      shell = "${pkgs.zsh}/bin/zsh";
      direction = "horizontal";
      enable_winbar = true;
    };
    lazygit = {
      enable = true;
      direction = "tab";
    };
  };
  vim.keymaps = [
  {
    mode = "t";
    key = "<Esc>";
    action = "<C-\\><C-n>";
  }
];
}
