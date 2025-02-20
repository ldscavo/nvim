return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<F2>', ':FloatermNew<CR>', { desc = 'Create a new terminal' })
    vim.keymap.set('t', '<F2>', '<C-\\><C-n>:FloatermNew<CR>', { desc = 'Create a new terminal' })

    vim.keymap.set('n', '<F3>', ':FloatermToggle<CR>', { desc = 'Toggle the terminal' })
    vim.keymap.set('t', '<F3>', '<C-\\><C-n>:FloatermToggle<CR>', { desc = 'Toggle the terminal' })

    vim.keymap.set('n', '<F4>', ':FloatermPrev<CR>', { desc = 'Previous terminal' })
    vim.keymap.set('t', '<F4>', '<C-\\><C-n>:FloatermPrev<CR>', { desc = 'Previous terminal' })

    vim.keymap.set('n', '<F5>', ':FloatermNext<CR>', { desc = 'Previous terminal' })
    vim.keymap.set('t', '<F5>', '<C-\\><C-n>:FloatermNext<CR>', { desc = 'Previous terminal' })

    vim.api.nvim_create_user_command('Lazygit', function()
      vim.api.nvim_command 'FloatermNew --height=0.9 --width=0.9 lazygit'
    end, {})
  end,
}
