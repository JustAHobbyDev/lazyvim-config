return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        once = true,
        callback = function()
          vim.schedule(function()
            for _, picker in ipairs(Snacks.picker.get({ source = "explorer" })) do
              picker:close()
            end
          end)
        end,
      })
    end,
    keys = {
      { "<leader>e", "<leader>fE", desc = "Explorer Snacks (cwd)", remap = true },
      { "<leader>E", "<leader>fe", desc = "Explorer Snacks (root dir)", remap = true },
    },
  },
}
