require("no-neck-pain").setup({
    buffers = {
        color = { blend = -0.2 }
    },
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("NoNeckPain")
	end,
})