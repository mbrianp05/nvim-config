local custom_horizon = require'lualine.themes.horizon'

-- Transparent bar
custom_horizon.normal.c.bg = '#00000000'
custom_horizon.insert.c.bg = '#00000000'
custom_horizon.visual.c.bg = '#00000000'
custom_horizon.replace.c.bg = '#00000000'
custom_horizon.command.c.bg = '#00000000'
custom_horizon.inactive.c.bg = '#00000000'

require('lualine').setup {
  options = { theme = custom_horizon }
}
