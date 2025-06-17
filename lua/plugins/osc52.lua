-- vim.g.clipboard = {
--   name = "DisabledOSC52",
--   copy = { ["+"] = nil }, -- 禁用复制到系统剪贴板
--   paste = { ["+"] = nil }, -- 禁用从系统剪贴板粘贴
-- }
-- vim.opt.clipboard = ""

return {
  {
    "ojroques/nvim-osc52",
    config = function()
      require("osc52").setup({
        max_length = 0, -- Maximum length of selection (0 for no limit)
        silent = false, -- Disable message on successful copy
        trim = false, -- Trim surrounding whitespaces before copy
        tmux_passthrough = true, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
      })
      -- vim.api.nvim_create_autocmd("TextYankPost", {
      --   callback = function()
      --     if vim.v.event.operator == "y" and vim.v.event.regname == "+" then
      --       require("osc52").copy_register("+")
      --     end
      --   end,
      -- })
      vim.keymap.set("n", "<leader>o", require("osc52").copy_operator, { expr = true })
      vim.keymap.set("n", "<leader>oo", "<leader>o_", { remap = true })
      vim.keymap.set("v", "<leader>o", require("osc52").copy_visual)
    end,
  },
}
