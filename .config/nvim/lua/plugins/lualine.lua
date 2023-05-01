return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
      lualine_c = { "filename", "diagnostics" },
      -- These will be filled later
      -- lualine_c = {'filename', 'diagnostics'},
      lualine_x = { "encoding", "fileformat", "filetype" },
    }
  end,
}
