-- set local keybinds
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap -- for conciseness

-- set leader key to space
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------------------
-- General Keymaps
-------------------

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)
-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- inline options
keymap.set("n", "<S-e>", "<S-w>$", opts) -- move cursor to end of line
keymap.set("n", "fl", "0", opts) -- move cursor to begin of line
keymap.set("v", "<S-e>", "<S-w>$", opts) -- move cursor to end of line - VISUAL MODE
keymap.set("v", "fl", "0", opts) -- move cursor to begin of line - VISUAL MODE

-- window management
keymap.set("n", "sv", "<C-w>v") -- split window vertically
keymap.set("n", "sh", "<C-w>s") -- split window horizontally
keymap.set("n", "se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "sc", ":close<CR>") -- close current split window

-- Better window navigation
keymap.set("n", "<leader>h", "<C-w>h", opts) -- move cursor to right windows
keymap.set("n", "<leader>j", "<C-w>j", opts) -- move cursor to below windows
keymap.set("n", "<leader>k", "<C-w>k", opts) -- move cursor to up windows
keymap.set("n", "<leader>l", "<C-w>l", opts) -- move cursor to left windows

-- resize with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts) -- resize horizontal
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts) -- resize vertical
keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- pressing ENTER key
-- keymap.set("n", "<leader>pe", ":Lex 30<cr>", opts) -- literally pressing the ENTER key

-- tab management
keymap.set("n", "to", ":tabnew<CR>", opts) -- open new tab
keymap.set("n", "tc", ":tabclose<CR>", opts) -- close current tab
keymap.set("n", "tn", ":tabn<CR>", opts) -- go to next tab
keymap.set("n", "tp", ":tabp<CR>", opts) -- go to previous tab

------------
-- VISUAL --
------------

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts) -- prevents copying what was pasted -

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-----------------

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-------------------
-- Plugin keybinds
-------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- toggle file explorer
keymap.set("n", "<leader>o", ":NvimTreeFocus<CR>", opts) -- focus file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current woriking directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits ( use <cr> to checkout ) [ "gc" for git commits ]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer ( use <cr> to checkout ) [ "gfc" for git file commits ]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches ( use <cr> to checkout ) [ "gb" for git branch ]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
