_: {
  vim = {

    ############################
    #       LSP Configs        #
    ############################
    lsp = {
      enable = true;
      servers = {
        prisma = {
          enable = true;
          cmd = [
            "prisma-language-server"
            "--stdio"
          ];
          filetypes = [ "prisma" ];
          settings = {
            prisma = {
              enableDiagnostics = true;
            };
          };
        };
      };
    };

    ############################
    #      FileType Fixed      #
    ############################
    luaConfigPre = '' 
      vim.filetype.add({
        extension = {
          prisma = "prisma",
        },
      })
    '';

    ############################
    #    Treesitter Configs    #
    ############################
    treesitter = {
      enable = true;
      indent.enable = true;
      fold = true;
    };

    ############################
    # Language Server Protocol #
    ############################
    languages = {
      enableTreesitter = true;
      enableExtraDiagnostics = false;
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
      tailwind.enable = true;
      tailwind.lsp.enable = true;
    };

    ############################
    #     Completion CMP       #
    ############################
    autocomplete = {
      blink-cmp.enable = true;
      blink-cmp.friendly-snippets.enable = true;
    };
  };
}
