-- init.lua

-- Временное отключение синтаксической подсветки и ftplugin для ускорения запуска
vim.cmd([[
syntax off
filetype off
filetype plugin indent off
]])

-- Убедитесь, что lazy.nvim установлен
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Подключаем модули конфигурации
require('plugins')
require('settings')
require('keybindings')
require('dashboard')

-- Включение синтаксической подсветки и ftplugin после загрузки
vim.cmd([[
syntax on
filetype on
filetype plugin indent on
]])
