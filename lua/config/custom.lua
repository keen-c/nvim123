-- Define a Lua function to remove text inside class quotes
local function remove_class_content()
	-- Get the current buffer
	local bufnr = vim.api.nvim_get_current_buf()

	-- Get all lines in the buffer
	local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

	-- Define the pattern to match class="...">
	local pattern = '(class=")[^"]*(")'

	-- Iterate over each line and apply the substitution
	for i, line in ipairs(lines) do
		lines[i] = line:gsub(pattern, "%1%2")
	end

	-- Set the modified lines back to the buffer
	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
end

-- Create a command to call the function
vim.api.nvim_create_user_command("RemoveClassContent", remove_class_content, {})
