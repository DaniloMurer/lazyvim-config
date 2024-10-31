return {
  "https://gitlab.com/itaranto/plantuml.nvim",
  version = "*",
  config = function()
    require("plantuml").setup({
      renderer = {
        type = "image",
        options = {
          prog = "feh",
          dark_mode = true,
          format = "svg",
        },
      },
    })
  end,
}
