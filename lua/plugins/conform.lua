return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["javascript"] = { "biome" },
        ["javascriptreact"] = { "biome" },
        ["typescript"] = { "biome" },
        ["typescriptreact"] = { "biome" },
        ["json"] = { "biome" },
        ["css"] = { "biome" },
      },
      formatters = {
        biome = {
          command = "biome",
          args = { "check", "--formatter-enabled=true", "--linter-enabled=true", "--organize-imports-enabled=true", "--write", "--stdin-file-path", "$FILENAME" },
        },
      },
    },
  },
}