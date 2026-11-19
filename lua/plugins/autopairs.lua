-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup {}

    local Rule = require 'nvim-autopairs.rule'
    local pairs = require 'nvim-autopairs'
    local cond = require 'nvim-autopairs.conds'

    -- Add rule for F#'s array and aunonymous syntaxes
    pairs.add_rules {
      Rule('|', '|', 'fsharp'):with_pair(cond.before_text '['),
      Rule('|', '|', 'fsharp'):with_pair(cond.before_text '{'),
    }
  end,
}
