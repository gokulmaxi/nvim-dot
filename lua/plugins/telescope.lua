return {
    {
      "nvim-telescope/telescope-ui-select.nvim",
    },
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
	local wk = require("which-key")
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown({}),
            },
          },
        })
        local builtin = require("telescope.builtin")
	wk.add({
		  { "<leader>f", group = "file" }, -- group
		  { "<leader>ff", builtin.find_files , desc = "Find Files" }, -- group
		  { "<leader>fg", builtin.live_grep, desc = "Live Grep" }, -- group
		  { "<leader><leader>", builtin.oldfiles, desc = "Recent Files" }, -- group
	})
        require("telescope").load_extension("ui-select")
      end,
    },
  }
