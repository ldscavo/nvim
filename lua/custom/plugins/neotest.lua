return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
      'Issafalcon/neotest-dotnet',
    },
  },
  config = function()
    local neotest = require 'neotest'

    neotest.setup {
      adapters = {
        require 'neotest-dotnet' {
          discovery_root = 'solution',
        },
      },
    }

    vim.keymap.set('n', '<leader>tr', neotest.run.run, { desc = '[T]est [R]un' })

    vim.keymap.set('n', '<leader>tf', function()
      neotest.run.run(vim.fn.expand '%')
    end, { desc = '[T]est [F]ile' })

    vim.keymap.set('n', '<leader>te', neotest.summary.open, { desc = '[T]est [E]xplorer' })
  end,
}
