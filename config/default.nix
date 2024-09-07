{ pkgs, inputs, ... }: {
  imports =
    [ ./keybinds.nix ./plugins ./theme.nix ./autocomplete.nix ./languages.nix ];
  config.vim = {
    lsp.enable = true;
    updateTime = 100;
    lineNumberMode = "relNumber";
    useSystemClipboard = true;
    leaderKey = " ";
    autoIndent = true;
    luaConfigPost = ''
      vim.opt.tabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.smartindent = true;
    '';
  };
}

