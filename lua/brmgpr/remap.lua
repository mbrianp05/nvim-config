vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Move lines up or down using K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Centers the cursor in the screen when going up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centers the cursor when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keeps the copied text in memoery
vim.keymap.set("n", "<leader>P", "\"_dP")

-- Open terminal
vim.keymap.set("n", "<C-t>", ":split<CR>:term<CR>:resize 10<CR>")

-- Exit insert mode in terminal
vim.keymap.set("t", "<C-{>", "<C-\\><C-n>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Switch between windows using basic cursor vertical motions
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- Remove next word
vim.keymap.set("i", "<C-d>", '<ESC>ciw')

-- Resize one window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')

vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Go to context 
vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Move between buffers
vim.keymap.set('n', '<C-n>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-b>', ':BufferLineCyclePrev<CR>')

-- Close the current buffer
vim.keymap.set('n', '<C-i>', ':bdelete<CR>')

