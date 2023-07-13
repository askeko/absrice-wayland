return {
  {
    'rose-pine/neovim',
    lazy = true,
    name = 'rose-pine',
    priority = 1000,
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end
  },
}
