return {
  "lukas-reineke/indent-blankline.nvim",
  event = "User TrueLoad",
  main = "ibl",
  opts = {
    scope = {
      enabled = true,
    },
    exclude = {
      filetypes = {
        "dashboard",
        "terminal",
        "help",
        "log",
        "markdown",
        "TelescopePrompt",
        "lsp-installer",
        "lspinfo",
      },
    },
  },
}
