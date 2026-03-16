_: {
  vim.filetree.neo-tree = {
    enable = true;
    setupOpts = {
      auto_clean_after_session_restore = true;
      git_status_async = true;
      enable_cursor_hijack = true;
      window = {
        width = "15%";
        mappings = {
          "l" = "open";
          "h" = "close_node";
        };
      };
    };
  };
  vim.keymaps = [
    {
      key = "<C-n>";
      mode = [ "v" "n" "i"];
      action = "<cmd>Neotree toggle<Cr>";
      desc = "Open Neo-tree";
    }
    {
      key = "<C-h>";
      mode = [ "v" "n" "i"];
      action = "<C-w>h";
      desc = "Move to window left";
    }
    {
      key = "<C-l>";
      mode = [ "v" "n" "i"];
      action = "<C-w>l";
      desc = "Move to window right";
    }
    {
      key = "<C-j>";
      mode = [ "v" "n" "i"];
      action = "<C-w>j";
      desc = "Move to window down";
    }
    {
      key = "<C-k>";
      mode = [ "v" "n" "i"];
      action = "<C-w>k";
      desc = "Move to window up";
    }
  ];
}
