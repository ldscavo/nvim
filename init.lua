vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

---@diagnostic disable-next-line: undefined-field
local uname = vim.loop.os_uname()
vim.g.is_windows = uname.sysname:find 'Windows' and true or false

if vim.g.is_windows then
  require 'windows-specific'
end

require 'options'

require 'keymaps'

require 'lazy-bootstrap'

-- vim: ts=2 sts=2 sw=2 et
