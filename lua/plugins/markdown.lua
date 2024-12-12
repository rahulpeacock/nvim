local HOME = os.getenv("HOME")

return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        -- https://github.com/LazyVim/LazyVim/discussions/4094
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.config/nvim/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    config = function()
      require('render-markdown').setup({
        latex = {
          enabled = false,
        },
        heading = {
            enabled = true,
            sign = true,
            position = 'overlay',
            icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
            signs = { '󰫎 ' },
            width = 'full',
            left_margin = 0,
            left_pad = 0,
            right_pad = 0,
            min_width = 0,
            border = false,
            border_virtual = false,
            border_prefix = false,
            above = '▄',
            below = '▀',
            backgrounds = {
                'RenderMarkdownH1Bg',
                'RenderMarkdownH2Bg',
                'RenderMarkdownH3Bg',
                'RenderMarkdownH4Bg',
                'RenderMarkdownH5Bg',
                'RenderMarkdownH6Bg',
            },
            foregrounds = {
                'RenderMarkdownH1Fg',
                'RenderMarkdownH2Fg',
                'RenderMarkdownH3Fg',
                'RenderMarkdownH4Fg',
                'RenderMarkdownH5Fg',
                'RenderMarkdownH6Fg',
            },
        },
        code = {
          enabled = true,
          sign = true,
          style = 'full',
          position = 'left',
          language_pad = 0,
          language_name = true,
          disable_background = { 'diff' },
          width = 'full',
          left_margin = 0,
          left_pad = 0,
          right_pad = 0,
          min_width = 0,
          border = 'thin',
          above = '▄',
          below = '▀',
          highlight = 'RenderMarkdownCode',
          highlight_inline = 'RenderMarkdownCodeInline',
          highlight_language = nil,
        },
    })
    end
  }
}