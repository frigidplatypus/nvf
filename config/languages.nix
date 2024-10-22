{ pkgs, ... }: {
  config.vim.treesitter = {
    enable = true;
    highlight.enable = true;
    grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      c
      diff
      html
      javascript
      just
      go
      css
      cpp
      gomod
      nix
      json
      markdown
      lua
      python
      xml
      yaml
      toml
      jsdoc
      jsonc
      luadoc
      luap
      markdown_inline
      printf
      query
      regex
      tsx
      typescript
      vim
      vimdoc
    ];

  };

  config.vim.lsp = {
    enable = true;
    formatOnSave = true;
  };
  config.vim.languages = {
    enableFormat = true;
    enableLSP = true;
    enableTreesitter = false;

    bash.enable = true;
    clang.enable = true;
    css.enable = true;
    go.enable = true;
    html.enable = true;
    lua.enable = true;
    markdown.enable = true;
    nix = {
      enable = true;
      format.type = "nixfmt";
    };
    python.enable = true;
    rust.enable = true;
    ts.enable = true;
  };
}
