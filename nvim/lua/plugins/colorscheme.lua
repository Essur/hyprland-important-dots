return {
  -- {
  --   "navarasu/onedark.nvim",
  --   lazy = false, -- Ensure it's loaded immediately
  --   priority = 1000, -- Make sure it loads before other UI-related plugins
  --   config = function()
  --     require("onedark").setup({
  --       style = "warmer", -- Options: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
  --       transparent = false, -- Set to true if you want a transparent background
  --     })
  --     require("onedark").load()
  --   end,
  -- },
  -- {
  --   "philosofonusus/morta.nvim",
  --   name = "morta",
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme("morta")
  --   end,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = function()
  --       require("catppuccin").load()
  --     end,
  --   },
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     no_italic = true,
  --     term_colors = true,
  --     transparent_background = false,
  --     styles = {
  --       comments = {},
  --       conditionals = {},
  --       loops = {},
  --       functions = {},
  --       keywords = {},
  --       strings = {},
  --       variables = {},
  --       numbers = {},
  --       booleans = {},
  --       properties = {},
  --       types = {},
  --     },
  --     color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         crust = "#000000",
  --       },
  --     },
  --     integrations = {
  --       telescope = {
  --         enabled = true,
  --         style = "nvchad",
  --       },
  --       dropbar = {
  --         enabled = true,
  --         color_mode = true,
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "bluz71/vim-moonfly-colors",
  --   name = "moonfly",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("moonfly")
  --   end,
  -- },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = function()
      require("nvim-web-devicons").setup({})
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
      vim.cmd.colorscheme("oxocarbon")
    end,
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  -- {
  --   "Yazeed1s/minimal.nvim",
  --   config = function()
  --     vim.cmd.colorscheme("minimal-base16")
  --   end,
  -- },
}
