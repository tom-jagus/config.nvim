return {
  -- Default LazyVim config - no npm or yarn
  -- "iamcco/markdown-preview.nvim",
  -- cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  -- build = function()
  --   require("lazy").load({ plugins = { "markdown-preview.nvim" } })
  --   vim.fn["mkdp#util#install"]()
  -- end,

  -- install with npm
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  keys = {
    {
      "<leader>cp",
      ft = "markdown",
      "<cmd>MarkdownPreviewToggle<cr>",
      desc = "Markdown Preview",
    },
  },
  config = function()
    vim.cmd([[do FileType]])
  end,
}
