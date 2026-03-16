_: {
  imports = [
    ./lsp.nix
    ./plugins.nix
    ./filetree.nix
    ./telescope.nix
    ./toggleterm.nix
    ./lualine.nix
    ./ui.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;

    theme = {
      enable = true;
      name = "tokyonight";
      style = "night";
    };

    diagnostics = {
      enable = true;
      config = {
        virtual_lines = true;
        # virtual_text = true; # for show after line
      };
    };

    ############################
    #        Clipboard         #
    ############################
    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
    };
    keymaps = [
      {
        key = "<C-c>";
        mode = "v";
        action = "\"+y";
        desc = "Clipboard to system";
      }
    ];

    ############################
    #          Indent          #
    ############################
    options = {
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
      expandtab = true;
      smartindent = true;
    };

    binds = {
      cheatsheet.enable = true;
      whichKey.enable = true;
    };

  };
}
