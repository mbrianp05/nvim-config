require('toggleterm').setup {
  size = 20,
  hide_numbers = true,
  start_in_insert = true,
  direction = "float",
  -- close_on_exit = true,
  open_mapping = [[<C-\>]],
  shell = 'pwsh',
  float_opts = {
    border = 'curved',
    highlights = {
      border = 'Normal'
    }
  }
}
