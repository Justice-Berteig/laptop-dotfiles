-- Set the colour scheme
vim.cmd("colorscheme nausicaa")

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 24
vim.opt.showmode = false
vim.opt.signcolumn = "yes"

-- Tab settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Search settings
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "81"
vim.opt.showmatch = true

-- Substitution settings
vim.opt.inccommand = "split"

-- Diagnostic settings
vim.diagnostic.config({
  virtual_lines = {
    current_line = true
  }
})

-- Synch OS and Neovim clipboards
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
