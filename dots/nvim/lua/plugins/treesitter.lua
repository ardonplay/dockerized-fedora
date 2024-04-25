require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "tsx", "java", "rust", "lua", "vim" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
