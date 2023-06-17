-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
<<<<<<< HEAD
local package_path_str = "C:\\Users\\TUYETN~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\TUYETN~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\TUYETN~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\TUYETN~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\TUYETN~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
=======
local package_path_str = "C:\\Users\\huybu\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\huybu\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\huybu\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\huybu\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\huybu\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
>>>>>>> window/nvim
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
>>>>>>> window/nvim
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
>>>>>>> window/nvim
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
>>>>>>> window/nvim
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
>>>>>>> window/nvim
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
>>>>>>> window/nvim
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
>>>>>>> window/nvim
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
>>>>>>> window/nvim
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
>>>>>>> window/nvim
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["inc-rename.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\0" },
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\inc-rename.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\inc-rename.nvim",
>>>>>>> window/nvim
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind.nvim",
>>>>>>> window/nvim
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
>>>>>>> window/nvim
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-null-ls.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-null-ls.nvim",
>>>>>>> window/nvim
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
>>>>>>> window/nvim
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
>>>>>>> window/nvim
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
>>>>>>> window/nvim
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
>>>>>>> window/nvim
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
>>>>>>> window/nvim
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
>>>>>>> window/nvim
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
>>>>>>> window/nvim
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
>>>>>>> window/nvim
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-autotag",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-autotag",
>>>>>>> window/nvim
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
>>>>>>> window/nvim
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim",
>>>>>>> window/nvim
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["oxocarbon.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oxocarbon.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oxocarbon.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nyoom-engineering/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
>>>>>>> window/nvim
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-ui-select.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-ui-select.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
>>>>>>> window/nvim
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
>>>>>>> window/nvim
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
>>>>>>> window/nvim
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript.nvim",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript.nvim",
>>>>>>> window/nvim
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-ReplaceWithRegister"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ReplaceWithRegister",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ReplaceWithRegister",
>>>>>>> window/nvim
    url = "https://github.com/inkarkat/vim-ReplaceWithRegister"
  },
  ["vim-maximizer"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer",
>>>>>>> window/nvim
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-nightfly-guicolors",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-nightfly-guicolors",
>>>>>>> window/nvim
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-surround"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
>>>>>>> window/nvim
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
<<<<<<< HEAD
    path = "C:\\Users\\Tuyet Ngoc\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-tmux-navigator",
=======
    path = "C:\\Users\\huybu\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-tmux-navigator",
>>>>>>> window/nvim
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: inc-rename.nvim
time([[Config for inc-rename.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\0", "config", "inc-rename.nvim")
time([[Config for inc-rename.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
