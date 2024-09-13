return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", 'BufNewFile'},
  config = function()
    local conf = require("conform")

    conf.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000
      }
    })

    vim.keymap.set({ "n", "v"}, "<leader>mp", function()
      conf.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000
      })
    end, { desc = "Format file or range"})
  end
}
