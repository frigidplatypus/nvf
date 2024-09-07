{
  config.vim.extraPlugins = {
    dashboard-nvim = {
      package = "dashboard-nvim";
      setup = builtins.readFile ./dashboard-nvim.lua;
    };
  };
}
