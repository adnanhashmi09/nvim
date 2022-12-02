local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true, noremap = true})
end

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- NERDTree Maps
map("n", "<leader>n", ":NvimTreeFindFileToggle<cr>")
map("n", "<leader>m", ":NvimTreeFocus<cr>")
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>")

-- navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
