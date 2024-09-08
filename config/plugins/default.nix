{ pkgs, ... }: {
  config.vim = {
    statusline.lualine.enable = true;
    telescope.enable = true;
    comments.comment-nvim.enable = true;
    filetree.neo-tree.enable = true;
    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };
    presence.neocord.enable = true;
    binds.whichKey.enable = true;
    utility.vim-wakatime.enable = true;
    notes.todo-comments.enable = true;
    ui.noice.enable = true;
    visuals.indentBlankline = {
      enable = true;
      setupOpts.indent.tab_char = "|";
    };
    git.gitsigns.enable = true;
    autopairs.enable = true;

    extraPlugins = {
      dashboard-nvim = {
        package = "dashboard-nvim";
        setup = builtins.readFile ./dashboard-nvim.lua;
      };
      vim-suda = {
        package = pkgs.vimPlugins.vim-suda;

        setup = "vim.g.suda_smart_edit = 1";
      };
      supermaven-nvim = {
        package = pkgs.vimPlugins.supermaven-nvim;
        setup = ''
          require("supermaven-nvim").setup({keymaps = {accept_suggestion = "<C-space>"} })'';
      };
    };
  };
}
