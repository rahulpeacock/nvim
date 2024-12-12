return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
    config = function()
      require("tokyonight").setup({
        plugins = { markdown = true },
        on_highlights = function(hl, c)
          hl["@text.title.1.markdown"] = { fg = c.blue, bold = true }
          hl["@text.title.2.markdown"] = { fg = c.yellow, bold = true }
          hl["@text.title.3.markdown"] = { fg = c.green, bold = true}
          hl["@text.title.4.markdown"] = { fg = c.teal, bold = true}
          hl["@text.title.5.markdown"] = { fg = c.magenta, bold = true}
          hl["@text.title.6.markdown"] = { fg = c.purple, bold = true}
        end,
      })
    end
  }
}
