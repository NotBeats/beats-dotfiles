return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.keybinds"] = {},
				["core.looking-glass"] = {},
				["core.integrations.treesitter"] = {},
				["core.ui"] = {},
				["core.concealer"] = {
					config = {
						icon_preset = "diamond",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
}
