{ pkgs, inputs, ... }: {
  imports = [ ./keybinds.nix ./plugins ];
  config.vim = {
    theme.enable = true;
    updateTime = 100;
    lineNumberMode = "relNumber";
    useSystemClipboard = true;
    leaderKey = " ";
    luaConfigPost = ''
      vim.opt.tabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.smartindent = true;
      vim.opt.autoindent = true;
    '';
  };
}

