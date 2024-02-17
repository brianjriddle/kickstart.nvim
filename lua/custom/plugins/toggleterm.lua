return {
   {'akinsho/toggleterm.nvim',
      version = "*",
      config = true,
   },
   require('which-key').register {
      ["<leader>t"] = {
         t = {"<cmd>ToggleTerm<cr>", "Toggle terminal"}
      }
   }
}
