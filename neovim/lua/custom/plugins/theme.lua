-- set my theme here; current theme tairiki tomorrow night palette
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "auto",
			no_italic = true, -- Force no italic
		})
		vim.opt.background = "dark"
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- {
-- 	"rebelot/kanagawa.nvim",
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			compile = true,
-- 			keywordStyle = { italic = false },
-- 			commentStyle = { italic = false },
-- 		})
-- 		vim.opt.background = "dark"
-- 		vim.cmd.colorscheme("kanagawa-dragon")
-- 	end,
-- }
--
-- {
-- 	"deparr/tairiki.nvim",
-- 	lazy = false,
-- 	priority = 1000, -- recommended if you use tairiki as your default theme
-- 	config = function()
-- 		require("tairiki").setup({
-- 			palette = "tomorrow",
-- 			-- style for different syntactic tokens
-- 			-- see :help nvim_set_hl() for available keys
-- 			code_style = {
-- 				comments = { italic = false },
-- 			},
-- 		})
-- 		vim.opt.background = "dark"
-- 		vim.cmd.colorscheme("tairiki")
-- 	end,
-- }
--
-- {
-- 	"vague2k/vague.nvim",
-- 	config = function()
-- 		-- NOTE: you do not need to call setup if you don't want to.
-- 		require("vague").setup({
-- 			transparent = false,
-- 			style = {
-- 				comments = "none",
-- 				strings = "none",
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("vague")
-- 	end,
-- },
-- {
-- 	"nyoom-engineering/oxocarbon.nvim",
-- 	config = function()
-- 		vim.opt.background = "dark" -- set this to dark or light
-- 		vim.cmd.colorscheme("oxocarbon")
-- 	end,
-- },

-- { -- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	config = function()
-- 		---@diagnostic disable-next-line: missing-fields
-- 		require("tokyonight").setup({
-- 			styles = {
-- 				comments = { italic = false }, -- Disable italics in comments
-- 			},
-- 		})
--
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("tokyonight-night") -- habamax
-- 	end,
-- },
