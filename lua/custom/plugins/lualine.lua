return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- opts = {
  -- theme = 'vscode',
  -- },
  config = function()
    require('lualine').setup()
  end,
}
