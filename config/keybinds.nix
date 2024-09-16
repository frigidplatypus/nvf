{
  config.vim.maps = {
    normal = {
      "<leader>f".action = "<cmd>Telescope live_grep<CR>";
      "<leader>b".action = "<cmd>Neotree<CR>";
      "<leader>e".action = "<cmd>Telescope find_files<CR>";
      "<leader>g".action = "<cmd>LazyGit<CR>";
      "<leader>t".action = "<cmd>ToggleTerm<CR>";
      "<leader>P".action = "<cmd>lua require(\"img-clip\").paste_image({dir_path=\"images\",  file_name = \"image.png\"})<CR>";
    };
    insert = { "jj".action = "<ESC>"; };
  };
}
