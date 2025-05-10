return {
  -- Catppuccin configuration
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      -- flavour = "macchiato",
      transparent_background = true,
      show_end_of_buffer = true,
      term_colors = true,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      integrations = {
        aerial = true,
        alpha = true,
        blink_cmp = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        render_markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
      highlight_overrides = {
        all = function(color)
          return {
            rainbow1 = { fg = color.red },
            Headline1 = { fg = color.red },
            RenderMarkdownH1 = { fg = color.red },
            RenderMarkdownH1Bg = { bg = "#47292d" }, --red
            rainbow2 = { fg = color.green },
            Headline2 = { fg = color.green },
            RenderMarkdownH2 = { fg = color.green },
            RenderMarkdownH2Bg = { bg = "#32412d" }, --green
            rainbow3 = { fg = color.blue },
            Headline3 = { fg = color.blue },
            RenderMarkdownH3 = { fg = color.blue },
            RenderMarkdownH3Bg = { bg = "#36394c" }, --blue
            rainbow4 = { fg = color.teal },
            Headline4 = { fg = color.teal },
            RenderMarkdownH4 = { fg = color.teal },
            RenderMarkdownH4Bg = { bg = "#233c47" }, --teal
            rainbow5 = { fg = color.yellow },
            Headline5 = { fg = color.yellow },
            RenderMarkdownH5 = { fg = color.yellow },
            RenderMarkdownH5Bg = { bg = "#474030" }, --yellow
            rainbow6 = { fg = color.peach },
            Headline6 = { fg = color.peach },
            RenderMarkdownH6 = { fg = color.peach },
            RenderMarkdownH6Bg = { bg = "#4a3326" }, --peach
            RenderMarkdownLink = { fg = color.sapphire },
            RenderMarkdownLinkText = { fg = color.sapphire },
            RenderMarkdownBullet = { fg = color.maroon },
            RenderMarkdownHint = { fg = color.teal },
          }
        end,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
}
