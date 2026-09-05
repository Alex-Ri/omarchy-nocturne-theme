return {
  {
    "Alex-Ri/nocturne.nvim",
    branch = "main",
    name = "nocturne",
    priority = 1000,
    config = function()
      require("nocturne").setup()
      vim.cmd.colorscheme("nocturne")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nocturne",
    },
  },
}
