vim.opt.termguicolors = true

local bufferline = require('bufferline')

require("bufferline").setup{
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    },
    separator_style = 'thin',
    style_preset = bufferline.style_preset.no_italic,
    -- or you can combine these e.g.
    style_preset = {
      bufferline.style_preset.no_italic,
      bufferline.style_preset.no_bold
    },
  }
}
