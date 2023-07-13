return {
  "ThePrimeagen/harpoon",
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>a", function() require("harpoon.mark").add_file() end },
    { "<C-e>",     function() require("harpoon.ui").toggle_quick_menu() end },
    { "<C-h>",     function() require("harpoon.ui").nav_file(1) end },
    { "<C-t>",     function() require("harpoon.ui").nav_file(2) end },
    { "<C-n>",     function() require("harpoon.ui").nav_file(3) end },
    { "<C-s>",     function() require("harpoon.ui").nav_file(4) end },
  },
}
