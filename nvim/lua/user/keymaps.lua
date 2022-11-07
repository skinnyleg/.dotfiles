-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
--keymap("", "<Space>", "<Nop>", opts)
--vim.g.mapleader = "<space>"
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Better window navigation
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- harpoon keymaps
keymap("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').nav_next()<CR>", opts)
keymap("n", "<S-TAB>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", opts)

-- toggle autosave on/off
keymap("n", "<leader>ts", ":ASToggle<CR>", opts)

-- undo with autosave on
-- keymap("n", "u", ":ASToggle<CR>u:ASToggle<CR>", opts)

-- shortcut
-- keymap("n", ";", ":", opts)

-- insert ; in normal_mode
keymap("n", "<leader>;", "mlA;<esc>`l", opts)

-- Move lines
keymap("n", "<A-j>", "<ESC>:m .+1<cr>==", opts)
keymap("n", "<A-k>", "<ESC>:m .-2<cr>==", opts)

-- paste the last yanked
-- keymap("n", "p", '"0p', opts)
-- keymap("n", "P", '"0P', opts)

-- Better Save
keymap("n", "<c-s>", ":w<CR>", opts)

-- Better close
keymap("n", "<leader>q", ":q<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>n", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)
-- close window
keymap("n", "cc", "<cmd>Bdelete!<CR><C-w>c", opts)

-- git keymapings
keymap("n", "<leader>g", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "gj", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "gk", ":Gitsigns prev_hunk<CR>", opts)

-- Insert --

-- Press jk fast to enter
keymap("i", "jk", "<ESC>l", opts)

-- Move cursor lines
keymap("i", "<A-j>", "<ESC>:m .+1<cr>==gi", opts)
keymap("i", "<A-k>", "<ESC>:m .-2<cr>==gi", opts)

-- insert ; in insert_mode
keymap("i", "<leader>;", "<esc>mlA;<esc>`l", opts)

-- Visual --

-- Stay in indent mode
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "<Tab>", ">gv", opts)

-- Better paste
-- keymap("v", "p", '"_dP', opts)

-- shortcut
-- keymap("v", ";", ":", opts)


-- Move all selected lines 
-- keymap("v", "<S-k>", ":move '<-2<CR>gv-gv", opts)
-- keymap("v", "<S-j>", ":move '>+1<CR>gv-gv", opts)

-- Move cursor lines 
keymap("v", "<A-k>", ":m '<-2<CR>gv-gv", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv-gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>th", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

