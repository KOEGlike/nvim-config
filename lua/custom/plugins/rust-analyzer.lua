return {
  -- Core LSP config plugin
  {
    'neovim/nvim-lspconfig',
    ft = { 'rust' },
    config = function()
      require('lspconfig').rust_analyzer.setup {
        settings = { ['rust-analyzer'] = {} },
      }
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^6',
    lazy = false,
  },
}
