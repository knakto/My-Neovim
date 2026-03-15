_:
{
  config.vim.lsp.enable = true;
  config.vim.treesitter = {
    enable = true;
    indent.enable = true;
  };

  ############################
  # Language Server Protocol #
  ############################
  config.vim.languages = {
    enableTreesitter = true;
    enableExtraDiagnostics = true;
    enableDAP = true;

    #---- Enable Language ----#
    clang.enable = true;
    clang.lsp.enable = true;
    nix.enable = true;
    nix.lsp.enable = true;
    html.enable = true;
    html.lsp.enable = true;
    ts.enable = true;
    ts.lsp.enable = true;
  };

  ############################
  #     Completion CMP       #
  ############################
  config.vim.autocomplete = {
    blink-cmp.enable = true;
    blink-cmp.friendly-snippets.enable = true;
  };
}
