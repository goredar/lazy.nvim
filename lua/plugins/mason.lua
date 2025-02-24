return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Linters
        "mypy",
        "golangci-lint",
        "revive",
        "vale",
        "markdownlint-cli2",
        "codespell",
        "cspell",

        -- Formatters
        "ruff",
        "buf",
        "jq",
        "prettier",
        "google-java-format",
        "taplo",
        "goimports",
      },
    },
  },
}
