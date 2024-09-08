{ pkgs, inputs, ... }: {
  imports =
    [ ./keybinds.nix ./plugins ./theme.nix ./autocomplete.nix (import ./languages.nix { inherit pkgs; }) ];
  config.vim = {
    updateTime = 100;
    lineNumberMode = "relNumber";
    useSystemClipboard = true;
    leaderKey = " ";
    autoIndent = true;
    spellcheck.enable = true;
    luaConfigPost = ''
      vim.opt.tabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.smartindent = true;
    '';
  };
}

