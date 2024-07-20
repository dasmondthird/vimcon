-- settings.lua

vim.opt.number = true         -- Показывать номера строк
vim.opt.relativenumber = true -- Относительные номера строк
vim.opt.syntax = 'on'         -- Включить подсветку синтаксиса
vim.opt.termguicolors = true  -- Включить 24-битные цвета
vim.opt.encoding = 'utf-8'    -- Установить кодировку UTF-8

-- Установка цветовой схемы
vim.cmd('colorscheme dracula')  -- Вы можете выбрать любую цветовую схему
