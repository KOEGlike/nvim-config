return {
    -- Core LSP config plugin
    {
      "neovim/nvim-lspconfig",
      ft = { "rust" },
      config = function()
        require("lspconfig").rust_analyzer.setup({
          settings = { ["rust-analyzer"] = {} }
        })
      end
    },
    -- Rust-specific enhancements (uses rust-analyzer)
    {
      "simrat39/rust-tools.nvim",
      ft = { "rust" },
      opts = {
        -- Any rust-tools settings, e.g. inlay hints, hover actions, etc.
      },
      config = function(_, opts)
        require("rust-tools").setup(opts)
      end
    },
  }
  