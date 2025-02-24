return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
        -- python = { "isort", "black" },
        -- markdown = { "write_good", "mdformat" },
        markdown = { "write_good" },
        proto = { "buf" },
        json = { "jq" },

        ["*"] = { "trim_newlines", "trim_whitespace" },
      },
      formatters = {
        goimports = {
          prepend_args = { "-local", "gitlab.pandadoc.com" },
        },
        hclfmt = {
          command = "hclfmt",
        },
        terragrunt_fmt = {
          command = "terragrunt",
          args = { "fmt", "-" },
        },
        taplo = {
          args = { "format", "-o", "indent_string=    ", "-" },
        },
        mdformat = {
          command = "mdformat",
          args = { "--wrap", "80", "-" },
        },
      },
    },
  },
}
