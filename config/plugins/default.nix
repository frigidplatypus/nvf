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
    notes.todo-comments.enable = true;
    ui = {
      noice.enable = true;
      colorizer.enable = true;
    };
    visuals.indentBlankline = {
      enable = true;
      setupOpts.indent.tab_char = "|";
    };
    git.gitsigns.enable = true;
    autopairs.enable = true;
    # notes.obsidian.enable = true;
    utility = {
      vim-wakatime.enable = true;
      surround.enable = true;
      preview.glow = {
        enable = true;
      };
      motion.leap.enable = true;
      images.image-nvim = {
        enable = true;
        setupOpts = {
          backend = "kitty";
          integrations.markdown = {
            # clearInInsertMode = true;
            # onlyRenderAtCursor = true;
            downloadRemoteImages = true;
          };
        };
      };
    };


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
      bullets-vim = {
        package = pkgs.vimPlugins.bullets-vim;
      };
      img-clip-nvim = {
        package = pkgs.vimPlugins.img-clip-nvim;
      };
    };
  };
}
