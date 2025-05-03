return {
	-- YAZI FOR FILE EXPLORER
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		dependencies = {
			-- check the installation instructions at
			-- https://github.com/folke/snacks.nvim
			"folke/snacks.nvim"
		},
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"<leader>pv",
				mode = { "n", "v" },
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
			{
				-- Open in the current working directory
				"<leader>-",
				"<cmd>Yazi cwd<cr>",
				desc = "Open the file manager in nvim's working directory",
			}  
		},
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
		-- 👇 if you use `open_for_directories=true`, this is recommended
		init = function()
			-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
			-- vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
		end,
	},
	-- FILE TREE
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
					side = "right"
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
				hijack_netrw = false
			}
			vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<CR>', { desc = 'Toggle Nvim Tree' })
		end,
	}

}
