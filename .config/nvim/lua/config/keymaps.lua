-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local opts = { noremap = true, silent = true }
local function build_opts(desc)
  local opts = { noremap = true, silent = true }
  if desc then
    opts["desc"] = desc
  end

  return opts
end

local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", build_opts())
keymap("i", "jj", "<ESC>", build_opts())

vim.opt.timeoutlen = 300

vim.keymap.set("n", "<leader>gl", require("gitsigns").blame_line, build_opts("git-blame"))
vim.keymap.set("n", "<leader>gt", require("gitsigns").stage_hunk, build_opts("stage-hunk"))
vim.keymap.set("v", "<leader>p", '"_dP')

vim.keymap.set("n", "<A-a>", "<C-a>")

vim.api.nvim_create_user_command("Rspec", function(input)
  local test_cmd = "bundle exec rspec " .. input.args
  vim.api.nvim_cmd({
    cmd = "terminal",
    args = { test_cmd },
  }, {})
end, { nargs = "*" })
