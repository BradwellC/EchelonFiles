return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linter_by_ft = {
      javascript = { "eslint", "eslint_d" },
      typescript = { "eslint", "eslint_d" },
      javascriptreact = { "eslint", "eslint_d" },
      typescriptreact = { "eslint", "eslint_d" },
      bash = { "bash" },
      python = { "pylint" },
      svelte = { "eslint", "eslint_d" },
      php = {},
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
