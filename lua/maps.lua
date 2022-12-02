local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true, noremap = true})
end

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- NERDTree Maps
map("n", "<leader>n", ":NvimTreeFindFileToggle<cr>")
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>")
