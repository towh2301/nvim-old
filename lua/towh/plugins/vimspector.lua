local status, vimspector = pcall(require, "vimspector")
if not status then
  return
end

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap -- for conciseness

-- set space to <leader>
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>dl", ":call vimspector#Launch()<CR>", opts)
keymap.set("n", "<leader>ds", ":call vimspector#Reset()<CR>", opts)
keymap.set("n", "<leader>dc", ":call vimspector#Continue()<CR>", opts)

keymap.set("n", "<leader>dt", ":call vimspector#ToggleBreakpoint()<CR>", opts)
keymap.set("n", "<leader>dT", ":call vimspector#ClearBreakpoint()<CR>", opts)

keymap.set("n", "<leader>dr", ":VimspectorRestart<CR>", term_opts)
keymap.set("n", "<leader>de", ":VimspectorStepOut<CR>", term_opts)
keymap.set("n", "<leader>di", ":VimspectorStepInto<CR>", term_opts)
keymap.set("n", "<leader>do", ":VimspectorStepOver<CR>", term_opts)
