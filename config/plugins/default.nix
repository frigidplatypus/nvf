{
  config.vim.extraPlugins = {
    tokyonight = {
      package = "tokyonight";
      setup =
        "require('tokyonight').setup({ style = 'night' }); vim.cmd('colorscheme tokyonight')";
    };
    dashboard-nvim = {
      package = "dashboard-nvim";
      setup = builtins.readFile ./dashboard-nvim.lua;
    };
  };
}
