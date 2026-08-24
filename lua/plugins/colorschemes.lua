return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(highlights, colors)
        local search_bg = require("tokyonight.util").blend("#ffffff", 0.08, colors.bg_highlight)

        for _, group in ipairs({ "Search", "CurSearch", "IncSearch" }) do
          highlights[group] = { bg = search_bg }
        end
      end,
    },
  },
  { "rebelot/kanagawa.nvim" },
}
