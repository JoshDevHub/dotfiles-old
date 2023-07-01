return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        solargraph = {
          cmd = { os.getenv("HOME") .. "/.rbenv/shims/solargraph", "stdio" },
        },
      },
    },
  },
}
