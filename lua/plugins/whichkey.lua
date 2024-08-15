local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

M.config = function ()
-- Load which-key
local wk = require("which-key")

-- Register keybindings
wk.add({
  -- File management group
  {
    "<leader>f", group = "file"
  },
  {
    "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n"
  },
  {
    "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n"
  },
  {
    "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files", mode = "n"
  },
  {
    "<leader>fb", function() print("Foobar") end, desc = "Foobar"
  },
  {
    "<leader>fn", desc = "New File"
  },
  {
    "<leader>f1", hidden = true -- hide this keymap
  },
  -- Window management group
  {
    "<leader>w", group = "windows", proxy = "<c-w>" -- Proxy to window mappings
  },
  {
    "<leader>wh", "<cmd>wincmd h<cr>", desc = "Move to Left Window", mode = "n"
  },
  {
    "<leader>wj", "<cmd>wincmd j<cr>", desc = "Move to Bottom Window", mode = "n"
  },
  {
    "<leader>wk", "<cmd>wincmd k<cr>", desc = "Move to Top Window", mode = "n"
  },
  {
    "<leader>wl", "<cmd>wincmd l<cr>", desc = "Move to Right Window", mode = "n"
  },
  {
    "<leader>ws", "<cmd>split<cr>", desc = "Split Window Horizontally", mode = "n"
  },
  {
    "<leader>wv", "<cmd>vsplit<cr>", desc = "Split Window Vertically", mode = "n"
  },
  {
    "<leader>wc", "<cmd>close<cr>", desc = "Close Current Window", mode = "n"
  },
  {
    "<leader>wo", "<cmd>only<cr>", desc = "Close Other Windows", mode = "n"
  },
  {
    "<leader>wt", "<cmd>tabnew<cr>", desc = "Move Window to New Tab", mode = "n"
  },
  {
    "<leader>wr", "<cmd>wincmd r<cr>", desc = "Rotate Windows", mode = "n"
  },

  -- Buffer management group
  {
    "<leader>b", group = "buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  },

  -- Common commands for NORMAL and VISUAL modes
  {
    mode = { "n", "v" },
    {
      "<leader>q", "<cmd>q<cr>", desc = "Quit"
    },
    {
      "<leader>w", "<cmd>w<cr>", desc = "Write"
    }
  }
})
	
end


return M
