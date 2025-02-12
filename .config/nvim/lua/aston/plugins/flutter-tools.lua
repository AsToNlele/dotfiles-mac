return {
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		enabled = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup()
			require("telescope").load_extension("flutter")

			vim.api.nvim_create_user_command("Flutter", function()
				vim.cmd(":Telescope flutter commands")
			end, {})
		end,
	},
	{
		"reisub0/hot-reload.vim",
		enabled = true,
		-- config = true,
	},
}
