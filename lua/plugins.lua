-- plugins.lua

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

-- Настройка пакетов через lazy.nvim
require('lazy').setup({
  -- Цветовые схемы
  'folke/tokyonight.nvim',
  'catppuccin/nvim',
  'EdenEast/nightfox.nvim',
  'Mofiqul/dracula.nvim',
  'ellisonleao/gruvbox.nvim',
  -- Статусная линия
  'nvim-lualine/lualine.nvim',
  'kyazdani42/nvim-web-devicons', -- Требуется для nvim-tree и lualine
  -- Файловый менеджер
  'kyazdani42/nvim-tree.lua',
  -- Поиск файлов и текста
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim', -- Требуется для Telescope
  -- Подсветка синтаксиса
  'nvim-treesitter/nvim-treesitter',
  -- Автодополнение
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  -- Плагины для LSP
  'neovim/nvim-lspconfig',
  -- Интеграция с Git
  'lewis6991/gitsigns.nvim',
  -- Подсказки для клавиш
  'folke/which-key.nvim',
  -- Приветственное окно
  'glepnir/dashboard-nvim',
  -- Улучшение интерфейса уведомлений и диалогов
  'folke/noice.nvim',
  'stevearc/dressing.nvim',
  -- Терминал внутри Neovim
  'akinsho/toggleterm.nvim',
  -- Плагин для автопар
  'windwp/nvim-autopairs',
  -- Автоматическое закрытие буферов
  'famiu/bufdelete.nvim',
  -- Быстрое переключение между буферами
  'akinsho/bufferline.nvim',
  -- Улучшение навигации между окнами
  'troydm/zoomwintab.vim',
})
