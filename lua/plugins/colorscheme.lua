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
        mocha = function(mocha)
          return {
            rainbow1 = { fg = mocha.red },
            Headline1 = { fg = mocha.red },
            RenderMarkdownH1 = { fg = mocha.red },
            RenderMarkdownH1Bg = { bg = "#47292d" }, --red
            rainbow2 = { fg = mocha.green },
            Headline2 = { fg = mocha.green },
            RenderMarkdownH2 = { fg = mocha.green },
            RenderMarkdownH2Bg = { bg = "#32412d" }, --green
            rainbow3 = { fg = mocha.blue },
            Headline3 = { fg = mocha.blue },
            RenderMarkdownH3 = { fg = mocha.blue },
            RenderMarkdownH3Bg = { bg = "#36394c" }, --blue
            rainbow4 = { fg = mocha.teal },
            Headline4 = { fg = mocha.teal },
            RenderMarkdownH4 = { fg = mocha.teal },
            RenderMarkdownH4Bg = { bg = "#233c47" }, --teal
            rainbow5 = { fg = mocha.yellow },
            Headline5 = { fg = mocha.yellow },
            RenderMarkdownH5 = { fg = mocha.yellow },
            RenderMarkdownH5Bg = { bg = "#474030" }, --yellow
            rainbow6 = { fg = mocha.peach },
            Headline6 = { fg = mocha.peach },
            RenderMarkdownH6 = { fg = mocha.peach },
            RenderMarkdownH6Bg = { bg = "#4a3326" }, --peach
            RenderMarkdownLink = { fg = mocha.sapphire },
            RenderMarkdownLinkText = { fg = mocha.sapphire },
            RenderMarkdownBullet = { fg = mocha.maroon },
            RenderMarkdownHint = { fg = mocha.teal },
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
