return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    input = {
      enabled = true,
    },
    picker = {
      enabled = true,
      layouts = {
        default = {
          reverse = true,
          layout = {
            box = 'horizontal',
            width = 0.8,
            min_width = 120,
            height = 0.8,
            {
              box = 'vertical',
              border = true,
              title = '{title} {live} {flags}',
              { win = 'list', border = 'bottom' },
              { win = 'input', height = 1, border = 'none' },
            },
            { win = 'preview', title = '{preview}', border = true, width = 0.5 },
          },
        },
      },
    },
    indent = {
      enabled = true,
      animate = { enabled = false },
    },
    dashboard = {
      enabled = true,
    },
    styles = {
      input = {
        title_post = 'left',
        relative = 'cursor',
        row = -3,
        col = 0,
      },
    },
  },
  keys = {
    -- Terminal
    {
      '<F2>',
      function()
        Snacks.terminal(nil, {
          win = {
            position = 'float',
            max_width = 120,
            max_height = 40,
            border = true,
          },
        })
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
    -- Picker
    {
      '<leader>sf',
      function()
        Snacks.picker.files { hidden = true, matcher = { frecency = true, sort_empty = true } }
      end,
      desc = '[S]earch [F]iles',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.grep()
      end,
      desc = '[S]earch [G]rep',
    },
    {
      '<leader><leader>',
      function()
        Snacks.picker.buffers()
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
        Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = '[S]earch [N]eovim files',
    },
    {
      '<leader>s.',
      function()
        Snacks.picker.recent { matcher = { history_bonus = true } }
      end,
      desc = '[S]earch Recent Files ("." for repeat)',
    },
    {
      '<leader>sm',
      function()
        Snacks.picker.marks()
      end,
      desc = '[S]earch [M]arks',
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.explorer { layout = 'ivy' }
      end,
      desc = '[F]ile [B]rowser',
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
