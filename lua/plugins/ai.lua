return {
  {
    "copilotlsp-nvim/copilot-lsp",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        keymap = {
          accept = "<C-f>",
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      nes = {
        enabled = true,
        keymap = {
          accept_and_goto = "<c-f>",
          accept = false,
          dismiss = "<Esc>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
        yaml = true,
      },
    },
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   requires = {
  --     "copilotlsp-nvim/copilot-lsp",
  --     init = function()
  --       vim.g.copilot_nes_debounce = 500
  --     end,
  --   },
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = {
  --         enabled = true,
  --         auto_trigger = true,
  --         hide_during_completion = true,
  --         trigger_on_accept = true,
  --         keymap = {
  --           accept = "<C-f>",
  --           accept_word = nil,
  --           accept_line = nil,
  --           next = nil,
  --           prev = nil,
  --           dismiss = "<C-c>",
  --         },
  --       },
  --       nes = {
  --         enabled = true,
  --         keymap = {
  --           accept_and_goto = "<c-f>",
  --           accept = false,
  --           dismiss = "<Esc>",
  --         },
  --       },
  --     })
  --   end,
  -- },
  -- {
  --   "folke/sidekick.nvim",
  --   opts = {
  --     -- add any options here
  --     cli = {
  --       mux = {
  --         backend = "zellij",
  --         enabled = true,
  --       },
  --     },
  --   },
  --   keys = {
  --     {
  --       "<c-f>",
  --       function()
  --         -- if there is a next edit, jump to it, otherwise apply it if any
  --         if not require("sidekick").nes_jump_or_apply() then
  --           return "<c-f>" -- fallback to normal tab
  --         end
  --       end,
  --       expr = true,
  --       desc = "Goto/Apply Next Edit Suggestion",
  --     },
  --     {
  --       "<c-.>",
  --       function()
  --         require("sidekick.cli").toggle()
  --       end,
  --       desc = "Sidekick Toggle",
  --       mode = { "n", "t", "i", "x" },
  --     },
  --     {
  --       "<leader>aa",
  --       function()
  --         require("sidekick.cli").toggle()
  --       end,
  --       desc = "Sidekick Toggle CLI",
  --     },
  --     {
  --       "<leader>as",
  --       function()
  --         require("sidekick.cli").select()
  --       end,
  --       -- Or to select only installed tools:
  --       -- require("sidekick.cli").select({ filter = { installed = true } })
  --       desc = "Select CLI",
  --     },
  --     {
  --       "<leader>ad",
  --       function()
  --         require("sidekick.cli").close()
  --       end,
  --       desc = "Detach a CLI Session",
  --     },
  --     {
  --       "<leader>at",
  --       function()
  --         require("sidekick.cli").send({ msg = "{this}" })
  --       end,
  --       mode = { "x", "n" },
  --       desc = "Send This",
  --     },
  --     {
  --       "<leader>af",
  --       function()
  --         require("sidekick.cli").send({ msg = "{file}" })
  --       end,
  --       desc = "Send File",
  --     },
  --     {
  --       "<leader>av",
  --       function()
  --         require("sidekick.cli").send({ msg = "{selection}" })
  --       end,
  --       mode = { "x" },
  --       desc = "Send Visual Selection",
  --     },
  --     {
  --       "<leader>ap",
  --       function()
  --         require("sidekick.cli").prompt()
  --       end,
  --       mode = { "n", "x" },
  --       desc = "Sidekick Select Prompt",
  --     },
  --     -- Example of a keybinding to open Claude directly
  --     {
  --       "<leader>ac",
  --       function()
  --         require("sidekick.cli").toggle({ name = "claude", focus = true })
  --       end,
  --       desc = "Sidekick Toggle Claude",
  --     },
  --   },
  -- },
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   version = false,
  --   opts = {
  --     provider = "claude",
  --     auto_suggestions_provider = "claude",
  --     providers = {
  --       claude = {
  --         -- model = "claude-sonnet-4.5",
  --         extra_request_body = {
  --           temperature = 0.75,
  --           max_tokens = 20480,
  --         },
  --       },
  --     },
  --     -- provider = "copilot",
  --     -- providers = {
  --     --   copilot = {},
  --     -- },
  --     -- auto_suggestions_provider = "copilot",
  --
  --     behaviour = {
  --       auto_suggestions = false,
  --       auto_set_highlight_group = true,
  --       auto_set_keymaps = true,
  --       auto_apply_diff_after_generation = true,
  --       support_paste_from_clipboard = true,
  --       minimize_diff = true,
  --       enable_token_counting = true,
  --     },
  --     mappings = {
  --       diff = {
  --         ours = "o",
  --         theirs = "v",
  --         next = "<S-j>",
  --         prev = "<S-k>",
  --       },
  --       sidebar = {
  --         switch_windows = "<S-j>",
  --         reverse_switch_windows = "<S-k>",
  --         close_from_input = { normal = "<Esc>", insert = "<C-d>" },
  --       },
  --     },
  --   },
  --   build = "make",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     "zbirenbaum/copilot.lua",
  --     {
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --         },
  --       },
  --     },
  --     {
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },
}
