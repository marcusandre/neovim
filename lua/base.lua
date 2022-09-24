vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.autoindent = true
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.laststatus = 2
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.ruler = true
vim.opt.shell = 'zsh'
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.title = true
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.wrap = false -- No Wrap lines

vim.o.termguicolors = true

if os.getenv('theme') == 'light' then
  vim.o.background = 'light'
else
  vim.o.background = "dark"
end

vim.cmd [[
  silent! colorscheme PaperColor
]]
