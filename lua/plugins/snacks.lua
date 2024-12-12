return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      statuscolumn = {
        enabled = true
      },
      dashboard = {
        enabled = vim.fn.argc(-1) <= 0,
      }
    },
  }
}