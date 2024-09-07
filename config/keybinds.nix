{
  config.vim.maps = {
    normal = {
      "<leader>f".action = "<cmd>FzfLua live_grep<CR>";
      "<leader>b".action = "<cmd>NvimTreeToggle<CR>";
      "<leader>e".action = "<cmd>FzfLua files<CR>";
      "<leader>g".action = "<cmd>LazyGit<CR>";
      "<leader>n".action = "<cmd>BufferLineCycleNext<CR>";
      "<leader>p".action = "<cmd>BufferLineCyclePrev<CR>";
      "<leader>t".action = "<cmd>FloatermToggle<CR>";
    };
    insert = { "jj".action = "<ESC>"; };
  };
}
