return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "cssls",
      "clangd",
      "gopls",
      "html",
      "jedi_language_server",
      "rust_analyzer",
      "svelte",
      "ts_ls",
      "wc_ls"
    }
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
