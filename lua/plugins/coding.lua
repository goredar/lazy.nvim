return {
  {
    "saghen/blink.cmp",
    build = "cargo build --release",
    opts = {
      completion = {
        list = {
          selection = { preselect = false, auto_insert = true },
        },
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
        ghost_text = {
          enabled = true,
        },
      },
      signature = { enabled = true },
      keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
        ["<C-l>"] = { "select_and_accept", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
    },
  },
}
