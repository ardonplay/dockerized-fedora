local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
  { 'phaazon/hop.nvim' },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
},
  {'nvim-treesitter/nvim-treesitter'},
  { 'neovim/nvim-lspconfig' },
  {'hrsh7th/cmp-nvim-lsp'}, 
  {'hrsh7th/cmp-buffer'}, 
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'}, 
  {'hrsh7th/nvim-cmp'}, 
  {'hrsh7th/cmp-nvim-lsp' },
  {'williamboman/nvim-lsp-installer'},
  {'terrortylor/nvim-comment'},
  {'williamboman/mason.nvim'},
  {'jose-elias-alvarez/null-ls.nvim'},
  {
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'}
  },
  {'windwp/nvim-autopairs'},
  {'windwp/nvim-ts-autotag'},
  {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
  {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    },
    {'lewis6991/gitsigns.nvim'},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
{'akinsho/toggleterm.nvim', version = "*", config = true},
{"folke/which-key.nvim"},
{"theprimeagen/vim-be-good"},
{ "ellisonleao/gruvbox.nvim"}
})

