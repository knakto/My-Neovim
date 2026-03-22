{ pkgs, ... }:
let
  tmuxConfigFile = pkgs.writeText "tmux_config.conf" (import ./tmux/tmux.nix {inherit pkgs;}).config;
in
{
  vim.terminal.toggleterm = {
    enable = true;
    mappings.open = "<C-\\>";
    setupOpts = {
      shell = "${pkgs.tmux}/bin/tmux -f '${tmuxConfigFile}' new-session -A -s nvf";
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
    key = "<C-]>";
    action = "<C-\\><C-n>";
  }
];
}
