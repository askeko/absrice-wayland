local Util = require("util")

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  -- or                              , branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "<leader>pf", Util.telescope("files") },
    { "<leader>ps", Util.telescope("live_grep") },
    { "<leader>vh", "<cmd>Telescope help_tags<cr>" },
  }
}
