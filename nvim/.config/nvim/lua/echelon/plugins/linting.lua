return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
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

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end
    })

    vim.keymap.set('n', '<leader>lf', function()
      lint.try_link()
    end, { desc = "[L]int [F]ile" })
  end
}
