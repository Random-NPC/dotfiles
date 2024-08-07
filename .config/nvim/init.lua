local lazypath = vim.fn.expand('%:p:h') .. '/lazy/lazy.nvim'

-- Check if the directory exists before attempting to clone
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath })
end

vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins")

