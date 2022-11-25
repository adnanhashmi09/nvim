local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])


packer.startup(function(use)

    -- Packer can manage itself
	use("wbthomason/packer.nvim")

    -- lualine
    use({
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    -- telescope
    use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

    use({
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    })

    use("preservim/nerdtree")
    use("PhilRunninger/nerdtree-visual-selection")
    use("ryanoasis/vim-devicons")
    use("nvim-tree/nvim-web-devicons")

    -- colorschemes
    use("joshdick/onedark.vim")

    -- parantheses and surrounds
    use("frazrepo/vim-rainbow")

    -- trim whitespace
    use("cappyzawa/trim.nvim")
    if packer_bootstrap then
		packer.sync()
	end
end)

