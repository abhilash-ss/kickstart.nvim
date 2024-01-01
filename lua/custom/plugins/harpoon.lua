return -- Harpoon https://github.com/ThePrimeagen/harpoon
{
	'ThePrimeagen/harpoon',
	opts = {
		menu = { width = vim.api.nvim_win_get_width(0) - 40 }
	},
	config = function()
		vim.api.nvim_set_keymap('n', '<leader>ht', ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
			{ noremap = true })
		vim.api.nvim_set_keymap('n', '<leader>m', ':lua require("harpoon.mark").add_file()', { noremap = true })
		pcall(require('telescope').load_extension, 'harpoon')
	end
}
