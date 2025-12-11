-- Use Powershell instead of CMD for terminal mode
vim.o.sh = 'pwsh'
vim.o.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.o.shellpipe = '> %s 2>&1'
vim.o.shellquote = ''
vim.o.shellxquote = ''
