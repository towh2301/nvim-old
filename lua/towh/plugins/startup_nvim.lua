local status, start = pcall(require, "startup")
if not status then
  print("startup not found!")
  return
end

start.setup({
  theme = "dashboard",
})
