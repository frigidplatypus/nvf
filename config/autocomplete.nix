{
  config.vim.autocomplete = {
    enable = true;
    sources = {
      "nvim_lsp" = "[LSP]";
      "path" = "[Path]";
      "buffer" = "[Buffer]";
    };
    mappings.complete = null;
    mappings.confirm = null;
  };
}
