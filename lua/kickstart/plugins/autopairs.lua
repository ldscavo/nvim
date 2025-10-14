-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done {
        fsharp = {
          [' '] = {
            kind = {
              cmp.lsp.CompletionItemKind.Function,
              cmp.lsp.CompletionItemKind.Method,
            },
          },
        },
      }
    )

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
