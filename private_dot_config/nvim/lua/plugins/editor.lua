local Util = require("util")

return {
  {
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
  },

  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<cr>" },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    -- or                              , branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      { "<leader>pf", Util.telescope("files") },
      { "<leader>ps", Util.telescope("live_grep") },
      { "<leader>vh", "<cmd>Telescope help_tags<cr>" },
    },
  },

  -- Automatically highlights other instances of the word under your cursor.
  -- This works with LSP, Treesitter, and regexp matching to find the other
  -- instances.
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      delay = 200,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { "lsp" },
      },
    },
    config = function(_, opts)
      require("illuminate").configure(opts)

      local function map(key, dir, buffer)
        vim.keymap.set("n", key, function()
          require("illuminate")["goto_" .. dir .. "_reference"](false)
        end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
      end

      map("]]", "next")
      map("[[", "prev")

      -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          local buffer = vim.api.nvim_get_current_buf()
          map("]]", "next", buffer)
          map("[[", "prev", buffer)
        end,
      })
    end,
    keys = {
      { "]]", desc = "Next Reference" },
      { "[[", desc = "Prev Reference" },
    },
  },
}
