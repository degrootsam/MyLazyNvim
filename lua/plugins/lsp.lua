return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {
        settings = {
          json = {
            schemas = {
              {
                description = "ESLint config",
                fileMatch = { ".eslintrc.json", "eslint.config.json" },
                url = "https://json.schemastore.org/eslintrc.json",
              },
              {
                description = "package.json",
                fileMatch = { "package.json" },
                url = "https://json.schemastore.org/package.json",
              },
              {
                description = "Custom schema",
                fileMatch = { "function.json" },
                url = "https://raw.githubusercontent.com/bettyblocks/json-schema/master/schemas/actions/function.json",
              },
            },
          },
        },
      },
    },
  },
}
