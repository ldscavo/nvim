return {
  'stevearc/oil.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'benomahony/oil-git.nvim',
  }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup {
      float = {
        border = 'single',
        max_width = 0.65,
        max_height = 0.75,
      },
      progress = {
        border = 'single',
      },
    }
    vim.keymap.set('n', '-', ':Oil<CR>', { desc = 'Open parent directory' })
  end,
}
