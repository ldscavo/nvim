return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<F2>', ':FloatermNew<CR>', { desc = 'Create new terminal' })
    vim.keymap.set('t', '<F2>', '<C-\\><C-n>:FloatermNew<CR>', { desc = 'Create new terminal' })

    vim.keymap.set('n', '<F3>', ':FloatermToggle<CR>', { desc = 'Toggle terminal' })
    vim.keymap.set('t', '<F3>', '<C-\\><C-n>:FloatermToggle<CR>', { desc = 'Toggle terminal' })

    vim.keymap.set('n', '<F4>', ':FloatermPrev<CR>', { desc = 'Next terminal' })
    vim.keymap.set('t', '<F4>', '<C-\\><C-n>:FloatermPrev<CR>', { desc = 'Next terminal' })

    vim.g.floaterm_width = 0.65
    vim.g.floaterm_height = 0.75

    vim.api.nvim_create_user_command('Lazygit', function()
      vim.api.nvim_command 'FloatermNew --height=0.9 --width=0.9 lazygit'
    end, {})

    vim.api.nvim_create_user_command('Lazydocker', function()
      vim.api.nvim_command 'FloatermNew --height=0.9 --width=0.9 lazydocker'
    end, {})
  end,
}
