{
  config.vim.autocomplete.nvim-cmp = {
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
