return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>eo', '<cmd>:Neotree filesystem reveal left<CR>', { desc = 'Neotree [E]xplorer [O]pen' })
    vim.keymap.set('n', '<leader>ec', '<cmd>:Neotree filesystem close left<CR>', { desc = 'Neotree [E]xplorer [C]lose' })
    vim.keymap.set('n', '<leader>et', '<cmd>:Neotree filesystem toggle left<CR>',
      { desc = 'Neotree [E]xplorer [T]oggle' })

    require('neo-tree').setup({
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰜌",
      },
      window = {
        width = 33,
      },
    })
  end
}
