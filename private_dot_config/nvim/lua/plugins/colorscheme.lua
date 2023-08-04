return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme "tokyonight"
    end
  },
}
