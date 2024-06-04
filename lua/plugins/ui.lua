return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  -- logo dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[ 

           ___      .__   __.  _______  .______       __       _______   _______ ____    ____ 
    /   \     |  \ |  | |       \ |   _  \     |  |     |       \ |   ____|\   \  /   / 
   /  ^  \    |   \|  | |  .--.  ||  |_)  |    |  |     |  .--.  ||  |__    \   \/   /  
  /  /_\  \   |  . `  | |  |  |  ||      /     |  |     |  |  |  ||   __|    \      /   
 /  _____  \  |  |\   | |  '--'  ||  |\  \----.|  |  __ |  '--'  ||  |____    \    /    
/__/     \__\ |__| \__| |_______/ | _| `._____||__| (__)|_______/ |_______|    \__/     
                                                                                        

      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
