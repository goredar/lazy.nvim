return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = function()
      return {
        model = "gpt-4-o-preview",
        auto_insert_mode = true,
        question_header = "  goredar",
        answer_header = "  copilot ",
        window = {
          width = 0.4,
        },
        mappings = {
          accept_diff = {
            normal = "<C-f>",
            insert = "<C-f>",
          },
        },
      }
    end,
  },
}
