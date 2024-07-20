-- dashboard.lua

local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
  [[ _____                                     ]],
  [[|  __ \                                    ]],
  [[| |  | | ___  ___  ___  ___   ___  ___     ]],
  [[| |  | |/ _ \/ __|/ _ \/ _ \ / _ \/ __|  ]],
  [[| |__| |  __/\__ \  __/ (_) |  __/\__ \ ]],
  [[|_____/ \___||___/\___|\___/ \___||___/ ]],
}

dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recently opened files", ":Telescope oldfiles<CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

alpha.setup(dashboard.config)
