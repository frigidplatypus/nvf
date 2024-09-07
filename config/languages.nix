{
  config.vim.languages = {
    enableFormat = true;
    enableLSP = true;
    enableTreesitter = true;

    bash.enable = true;
    clang.enable = true;
    css.enable = true;
    go.enable = true;
    html.enable = true;
    lua.enable = true;
    markdown.enable = true;
    nix = {
      enable = true;
      format.type = "nixpkgs-fmt";
    };
    python.enable = true;
    rust.enable = true;
    ts.enable = true;
  };
}
