return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      panel = { enabled = false },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        trigger_on_accept = true,
        keymap = {
          accept = "<C-f>",
          accept_word = nil,
          accept_line = nil,
          next = nil,
          prev = nil,
          dismiss = "<C-c>",
        },
      },
      filetypes = {
        help = false,
        yaml = true,
      },
    },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "claude",
      auto_suggestions_provider = "claude",
      providers = {
        claude = {
          -- model = "claude-sonnet-4.5",
          extra_request_body = {
            temperature = 0.75,
            max_tokens = 20480,
          },
        },
      },
      -- provider = "copilot",
      -- providers = {
      --   copilot = {},
      -- },
      -- auto_suggestions_provider = "copilot",

      behaviour = {
        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = true,
        support_paste_from_clipboard = true,
        minimize_diff = true,
        enable_token_counting = true,
      },
      mappings = {
        diff = {
          ours = "o",
          theirs = "v",
          next = "<S-j>",
          prev = "<S-k>",
        },
        sidebar = {
          switch_windows = "<S-j>",
          reverse_switch_windows = "<S-k>",
          close_from_input = { normal = "<Esc>", insert = "<C-d>" },
        },
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
