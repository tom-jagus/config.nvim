return {
  -- Catppuccin configuration
  {
    "catppuccin/nvim",
    opts = {
      highlight_overrides = {
        all = function(color)
          return {
            -- H1
            rainbow1 = { fg = color.red, bg = "#47292d" },
            Headline1 = { fg = color.red },
            RenderMarkdownH1 = { fg = color.red },
            RenderMarkdownH1Bg = { bg = "#47292d" }, --red
            -- H2
            rainbow2 = { fg = color.base, bg = color.green }, --green
            Headline2 = { fg = color.base },
            RenderMarkdownH2 = { fg = color.base },
            RenderMarkdownH2Bg = { bg = color.green },
            -- H3
            rainbow3 = { fg = color.base, bg = color.blue }, --blue
            Headline3 = { fg = color.base },
            RenderMarkdownH3 = { fg = color.base },
            RenderMarkdownH3Bg = { bg = color.blue },
            -- H4
            rainbow4 = { fg = color.base, bg = color.teal }, --teal
            Headline4 = { fg = color.base },
            RenderMarkdownH4 = { fg = color.base },
            RenderMarkdownH4Bg = { bg = color.teal },
            -- H5
            rainbow5 = { fg = color.base, bg = color.yellow }, --yellow
            Headline5 = { fg = color.base },
            RenderMarkdownH5 = { fg = color.base },
            RenderMarkdownH5Bg = { bg = color.yellow },
            -- H6
            rainbow6 = { fg = color.base, bg = color.peach }, -- peach
            Headline6 = { fg = color.base },
            RenderMarkdownH6 = { fg = color.base },
            RenderMarkdownH6Bg = { bg = color.peach },
            -- Other
            RenderMarkdownLink = { fg = color.sapphire },
            RenderMarkdownLinkText = { fg = color.sapphire },
            RenderMarkdownBullet = { fg = color.maroon },
            RenderMarkdownHint = { fg = color.teal },
          }
        end,
      },
    },
  },
}
