return {
  {
    "catppuccin",
    opts = {
      -- flavour = "macchiato",
      flavour = "mocha",
      integrations = { blink_cmp = true },
      -- transparent_background = true,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      scratch = { enabled = false },
      terminal = { enabled = false },
      scroll = { enabled = false },
      words = { enabled = false },
      indent = {
        -- scope = {
        --   enabled = false,
        -- },
        animate = {
          enabled = false,
        },
        blank = {
          char = "·",
        },
      },
    },
  },
}
