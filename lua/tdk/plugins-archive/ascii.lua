return {
	"MaximilianLloyd/ascii.nvim",
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("ascii")
	end,
}
