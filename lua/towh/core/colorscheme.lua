-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, corlors = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
  print("Colorscheme not found!") -- print error if colorschome not installed
  return
end
