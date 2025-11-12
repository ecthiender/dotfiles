vim.keymap.set("n", "<leader>nf", function()
	local filename = vim.fn.input("New file name: ", "", "file")
	if filename ~= "" then
		vim.cmd("e " .. filename)
	end
end, { desc = "Create new file" })

return {}
