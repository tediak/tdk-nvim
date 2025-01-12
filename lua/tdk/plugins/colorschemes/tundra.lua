return {
	"sam4llis/nvim-tundra",
	config = function()
		require("nvim-tundra").setup({
			transparent_background = true,
		})

		-- Tundra colorscheme
		vim.g.tundra_biome = "jungle"
	end,
}
