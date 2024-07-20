-- plugins.lua

require('lazy').setup({
  -- Цветовая схема
  'folke/tokyonight.nvim',
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
  {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  },
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
  -- Оптимизация производительности
  'lewis6991/impatient.nvim',
  -- Плагин для быстрого перемещения по тексту
  'easymotion/vim-easymotion',
  -- Альтернатива EasyMotion
  'phaazon/hop.nvim',
  -- Плагин для прозрачности
  'xiyaowong/nvim-transparent',
})
