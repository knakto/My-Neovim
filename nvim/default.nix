_:
{
  imports = [
    ./lsp.nix
    ./plugins.nix
    ./keybinds.nix
  ];

  vim = {

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

    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
    };

    options = {
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
      expandtab = true;
      smartindent = true;
    };

  };
}
