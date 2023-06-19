-- Start menu

-- require setup
require("towh.plugins-setup")
require("towh.core.options")
require("towh.core.keymaps")
require("towh.core.colorscheme")
require("towh.plugins.comment")
require("towh.plugins.nvim-tree")
require("towh.plugins.lualine")
require("towh.plugins.telescope")
require("towh.plugins.nvim-cmp")
require("towh.plugins.lsp.mason")
require("towh.plugins.lsp.null-ls")
require("towh.plugins.lsp.lspconfig")
require("towh.plugins.autopairs")
require("towh.plugins.treesitter")
require("towh.plugins.gitsigns")
require("towh.plugins.toggleterm")
require("towh.plugins.startup_nvim")

-- nvim loader
-----------------------------------------------------------
-----------------------------------------------------------
--    _____  ____  ___.______________   _____  ____  ___ --
--   /  _  \ \   \/  /|   \_   _____/  /  _  \ \   \/  / --
--  /  /_\  \ \     / |   ||    __)_  /  /_\  \ \     /  --
-- /    |    \/     \ |   ||        \/    |    \/     \  --
-- \____|__  /___/\  \|___/_______  /\____|__  /___/\  \ --
--         \/      \_/            \/         \/      \_/ --
-----------------------------------------------------------
-----------------------------------------------------------

vim.loader.enable()
-- require("minimal")
