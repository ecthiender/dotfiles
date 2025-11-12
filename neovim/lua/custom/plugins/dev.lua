return {
	{
		dir = "~/codeyard/daak.nvim",
		config = function()
			local daak = require("daak").setup()
			vim.keymap.set("n", "<leader>pr", function()
				print("Reloading daak.nvim..")
				package.loaded["daak"] = nil
				require("daak").setup()
				print("daak.nvim (reloaded)..")
			end, {
				desc = "[dev] Reload daak.nvim plugin",
			})
		end,
	},
}
