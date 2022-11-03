local status_ok, configs = pcall(require, "treesitter-context")
if not status_ok then
  return
end

configs.setup{
  enable = true,
  max_lines = 0,
  zindex = 20,
  patterns = {
    ruby = {
      'block',
    }
  }
}

vim.cmd [[hi TreesitterContext guibg=#44475a]]
