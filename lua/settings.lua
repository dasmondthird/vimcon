-- settings.lua

vim.opt.number = true         -- Показывать номера строк
vim.opt.relativenumber = true -- Относительные номера строк
vim.opt.syntax = 'on'         -- Включить подсветку синтаксиса
vim.opt.termguicolors = true  -- Включить 24-битные цвета
vim.opt.encoding = 'utf-8'    -- Установить кодировку UTF-8

-- Установка цветовой схемы
require("tokyonight").setup({
  style = "storm",
  on_colors = function(colors)
    colors.purple = "#9d7cd8"
    colors.bg_dark = "#1a1b26"
    colors.bg = "#1f2335"
  end
})
vim.cmd[[colorscheme tokyonight]]

-- Настройка lualine
require('lualine').setup {
  options = {
    theme = 'tokyonight',  -- Вы можете выбрать тему, которая вам нравится
  }
}

-- Настройка nvim-tree
require('nvim-tree').setup()

-- Настройка nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Для использования LuaSnip
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- Использование настройки для автодополнения в командной строке
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Настройка LSP
require'lspconfig'.intelephense.setup{}  -- для PHP
require'lspconfig'.pyright.setup{}       -- для Python

-- Настройка gitsigns
require('gitsigns').setup()

-- Настройка which-key
require("which-key").setup {}

-- Настройка nvim-autopairs
require('nvim-autopairs').setup{}

-- Настройка bufferline
require("bufferline").setup{}

-- Настройка hop.nvim
require('hop').setup{}

-- Настройка прозрачности
require("transparent").setup({
  extra_groups = {
    "NormalFloat",
    "NvimTreeNormal"
  },
})
