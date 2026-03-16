_:
{
  vim.statusline.lualine = {
    enable = true;
    extraActiveSection = {

      a = [ "mode" ];
      b = [ "branch" "diff" ];
      c = [ "filename" ];

      x = [ "diagnostics" ];
      y = [ "lsp" "filetype" ];
      z = [ "location" "progress" ];

    };
  };
}
