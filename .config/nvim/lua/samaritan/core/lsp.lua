vim.lsp.enable('lua_ls', 'emmet_ls', 'bashls', 'cssls', 'ts_ls')

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
      -- End of keymap function
    end

    -- Keymaps Start
    map('<leader>cd', require('telescope.builtin').lsp_definitions, '[C]ode [D]efinition')
    map('<leader>cr', require('telescope.builtin').lsp_references, '[C]ode [R]references')
    map('<leader>cI', require('telescope.builtin').lsp_implementations, '[C]ode [I]mplementations')
    map('<leader>ch', vim.lsp.buf.hover, '[C]ode [H]over')
    map('<leader>D', require('telescope.builtin').lsp_type_definitions, '[T]ype [D]efinition')
    map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    map('<leader>ws', require('telescope.builtin').lsp_workspace_symbols, '[W]orkspace [S]ymbols')
    map('<leader>cR', vim.lsp.buf.rename, '[C]ode [R]ename')
    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })
    map('<leader>cD', vim.lsp.buf.declaration, '[C]ode [D]eclaration')
    -- Keymaps End

    -- End of autocmd
  end,
})

vim.diagnostic.config({
  virtual_lines = true,
  -- virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})
