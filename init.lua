-- Map leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
-- Enable relative line numbers
vim.opt.relativenumber = true

-- Enable absolute line numbers on the current line
vim.opt.number = true

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
]]

-- Optional: Set transparency for floating windows
vim.cmd [[
  highlight NormalFloat guibg=NONE
  highlight FloatBorder guifg=gray guibg=NONE
]]


require("config.lazy")

