return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
        Daily Tasks
]],
      },
      sections = {
        { section = "header" },
        { pane = 2, indent = 3, title = "Recent files" },
        { pane = 2, indent = 4, section = "recent_files", limit = 8, padding = 1 },
        { pane = 2, indent = 3, title = "Projects" },
        { pane = 2, indent = 4, section = "projects", padding = 1 },
        { pane = 2, indent = 3, title = "Hotkeys" },
        { pane = 2, indent = 4, section = "keys", padding = 1 },
        { pane = 2, indent = 3, section = "startup", padding = 2 },
      },
    },
  },
}
