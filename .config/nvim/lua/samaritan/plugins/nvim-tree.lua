return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })
    -- temporary fix for school projects
    vim.treesitter.language.register("html", "ejs")
    vim.treesitter.language.register("javascript", "ejs")

    -- set keymaps
    local keymap = vim
    .keymap                                                                                                            -- for conciseness

    keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "[E]xplorer [T]oggle" })                         -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "[E]xplorer [T]oggle On Current File" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "[E]xplorer [C]lose" })                        -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "[E]xplorer [R]efresh" })                       -- refresh file explorer
  end
}
