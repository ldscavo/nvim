return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    input = { enabled = true },
    picker = { enabled = true },
    indent = {
      enabled = true,
      animate = { enabled = false },
    },
  },
  keys = {
    {
      '<F2>',
      function()
        Snacks.terminal()
      end,
      mode = { 'n', 't' },
    },
    {
      '<F3>',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
      mode = { 'n', 't' },
    },
    {
      '<leader>sf',
      function()
        Snacks.picker.files { layout = 'telescope' }
      end,
      desc = '[S]earch [F]iles',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.grep { layout = 'telescope' }
      end,
      desc = '[S]earch [G]rep',
    },
    {
      '<leader><leader>',
      function()
        Snacks.picker.buffers { layout = 'telescope' }
      end,
      desc = '[ ] Find existing buffers',
    },
    {
      '<leader>sr',
      function()
        Snacks.picker.resume()
      end,
      desc = '[S]earch [R]esume',
    },
    {
      '<leader>sn',
      function()
        Snacks.picker.files { cwd = vim.fn.stdpath 'config', layout = 'telescope' }
      end,
      desc = '[S]earch [N]eovim files',
    },
    {
      '<leader>s.',
      function()
        Snacks.picker.recent { layout = 'telescope' }
      end,
      desc = '[S]earch Recent Files ("." for repeat)',
    },
    -- LSP
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      'gI',
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = 'Goto Implementation',
    },
    {
      'gD',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto T[y]pe Definition',
    },
  },
}
