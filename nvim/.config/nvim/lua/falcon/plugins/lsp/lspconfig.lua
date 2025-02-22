return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local servers = { "lua_ls", "ts_ls", "eslint", "pyright", "bashls", "cssls", "cssmodules_ls", "intelephense" }

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    if servers ~= 'jdtls' then
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
        })
      end
    end

    -- Set vim motion for <Space> + c + h to show code documentation about the code the cursor is currently over if available
    vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "[C]ode [H]over Documentation" })
    -- Set vim motion for <Space> + c + d to go where the code/variable under the cursor was defined
    vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })
    -- Set vim motion for <Space> + c + a for display code action suggestions for code diagnostics in both normal and visual mode
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
    -- Set vim motion for <Space> + c + r to display references to the code under the cursor
    vim.keymap.set(
      "n",
      "<leader>cr",
      require("telescope.builtin").lsp_references,
      { desc = "[C]ode Goto [R]eferences" }
    )
    -- Set vim motion for <Space> + c + i to display implementations to the code under the cursor
    vim.keymap.set(
      "n",
      "<leader>ci",
      require("telescope.builtin").lsp_implementations,
      { desc = "[C]ode Goto [I]mplementations" }
    )
    -- Set a vim motion for <Space> + c + <Shift>R to smartly rename the code under the cursor
    vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
    -- Set a vim motion for <Space> + c + <Shift>D to go to where the code/object was declared in the project (class file)
    vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })
  end,
}
