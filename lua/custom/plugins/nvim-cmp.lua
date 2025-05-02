return {
    -- Autocompletion plugin
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
        'hrsh7th/cmp-buffer',   -- Buffer completions
        'hrsh7th/cmp-path',     -- File path completions
        'hrsh7th/cmp-cmdline',  -- Cmdline completions
        'L3MON4D3/LuaSnip',     -- Snippet engine
        'saadparwaiz1/cmp_luasnip' -- Snippet completions
      },
      config = function()
        local cmp = require'cmp'
        cmp.setup({
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ['<Tab>'] = cmp.mapping.select_next_item(),
            ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          }),
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
          }, {
            { name = 'buffer' },
          })
        })
      end
    },
  }
  