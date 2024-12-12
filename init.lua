-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable perl provider (:checkhealth)
vim.g.loaded_perl_provider = 0

-- Disable ruby provider (:checkhealth)
vim.g.loaded_ruby_provider = 0

vim.lsp.util.use_fswatch = true
