-- init.lua

require('plugins')
require('settings')
require('keybindings')

-- Настройка lualine
require('lualine').setup {
  options = {
    theme = 'dracula',  -- Вы можете выбрать тему, которая вам нравится
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

-- Настройка dashboard
require('dashboard').setup {
  theme = 'doom',
  config = {
    header = {
      [[ _____                                     ]],
      [[|  __ \                                    ]],
      [[| |  | | ___  ___  ___  ___   ___  ___     ]],
      [[| |  | |/ _ \/ __|/ _ \/ _ \ / _ \/ __|  ]],
      [[| |__| |  __/\__ \  __/ (_) |  __/\__ \ ]],
      [[|_____/ \___||___/\___|\___/ \___||___/ ]],
    },
    center = {
      {
        icon = '  ',
        desc = 'Recently opened files                   ',
        action = 'Telescope oldfiles',
        shortcut = 'SPC f h'
      },
      {
        icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files',
        shortcut = 'SPC f f'
      },
      {
        icon = '  ',
        desc = 'File Browser                            ',
        action = 'NvimTreeToggle',
        shortcut = 'SPC f b'
      },
      {
        icon = '  ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f w'
      },
    },
    footer = {}  -- your footer
  }
}

-- Настройка toggleterm
require("toggleterm").setup{
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = vim.o.shell,
}

-- Настройка nvim-autopairs
require('nvim-autopairs').setup{}

-- Настройка bufferline
require("bufferline").setup{}
