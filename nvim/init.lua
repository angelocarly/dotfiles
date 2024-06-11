-- lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
--editor
  "tpope/vim-surround",
  "raimondi/delimitmate",
  "machakann/vim-highlightedyank",
  "folke/which-key.nvim",

--colors
  "vim-airline/vim-airline",
  "vim-airline/vim-airline-themes",
  {
   "sainnhe/sonokai",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[let g:sonokai_style = 'shusia']])
      vim.cmd([[let g:sonokai_better_performance = 1]])
      vim.cmd([[colorscheme sonokai]])
    end,
  },
}

require("lazy").setup(plugins)
