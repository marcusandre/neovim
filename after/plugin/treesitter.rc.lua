local status, treesitter = pcall(require, "treesitter")
if (not status) then return end

treesitter.configs.setup {
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  autotag = {
    enable = true
  },

  -- A list of parser names, or "all"
  ensure_installed = {
    "lua",
    "rust",
    "json",
    "typescript",
    "javascript",
    "tsx",
    "jsx"
  }
}
