return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
        go = { "golangcilint", "revive" },
        -- markdown = { "vale", "markdownlint-cli2" },
        ["*"] = { "codespell", "cspell" },
      },
      -- linters = {
      --   ["markdownlint-cli2"] = {
      --     args = { "--config", "/Users/vitali.sazonenka/.config/markdownlint-cli2.yaml", "--" },
      --   },
      -- },
    },
  },
}
