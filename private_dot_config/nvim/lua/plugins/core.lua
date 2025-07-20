return {
  {
    "sainnhe/everforest",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
      -- background = "dark",
      -- contrast = "hard",
    },
  },

  -- fix breaking changes in 2.0.0 by pinning to 1.*
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },

  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    --stylua: ignore
    keys = {
      { "<leader>a", function() require("harpoon.mark").add_file() end, },
      { "<C-e>",     function() require("harpoon.ui").toggle_quick_menu() end, },
      { "<C-m>",     function() require("harpoon.ui").nav_file(1) end, },
      { "<C-t>",     function() require("harpoon.ui").nav_file(2) end, },
      { "<C-n>",     function() require("harpoon.ui").nav_file(3) end, },
      { "<C-s>",     function() require("harpoon.ui").nav_file(4) end, },
    },
  },

  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {}, -- lazy.nvim will implicitly calls `setup {}`
  },

  {
    "mbbill/undotree",
    keys = {
      { "<leader>U", "<cmd>UndotreeToggle<cr>" },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = cmp.config.disable,
      })
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },

  {
    "PontusHanssen/pddl.vim",
  },

  -- {
  --   "mfussenegger/nvim-jdtls",
  --   ---@type lspconfig.options.jdtls
  --   ---@diagnostic disable-next-line: missing-fields
  --   opts = {
  --     jdtls = function(opts)
  --       local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
  --       local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
  --       table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)
  --       return opts
  --     end,
  --   },
  -- },
}
