return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nsidorenco/neotest-vstest',
  },
  keys = {
    { '<leader>tr', function() require('neotest').run.run() end, desc = '[T]est [R]un' },
    { '<leader>tf', function() require('neotest').run.run(vim.fn.expand '%') end, desc = '[T]est [F]ile' },
    { '<leader>te', function() require('neotest').summary.open() end, desc = '[T]est [E]xplorer' },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-vstest',
      },
    }
  end,
}
