-- import flutter tools safely
local status, flutter = pcall(require, "flutter-tools")
if not status then
  print("flutter-tools is not installed")
  return
end

flutter.setup({})
