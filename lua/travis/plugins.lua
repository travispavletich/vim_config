-- Install lazy.nvim
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


-- Load plugins
require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },
    {"EdenEast/nightfox.nvim", tag = "3.8.0"},
    -- {"nvim-treesitter/nvim-treesitter", tag = "v0.9.1", build=":TSUpdate"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'williamboman/mason.nvim', tag = 'v1.8.3'},
    {'williamboman/mason-lspconfig.nvim', tag = 'v1.25.0'},
    {'neovim/nvim-lspconfig', tag = 'v0.1.7'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'echasnovski/mini.comment'},
    {'pwntester/octo.nvim', commit = '15e1c949bdc6f77b1296977a6a7dde5d06c6c004'},
    {'addcninblue/nvim-epoch-converter'},
    {'f-person/git-blame.nvim'},
    {'ruifm/gitlinker.nvim'},
    {'rose-pine/neovim'},
    {'folke/tokyonight.nvim'},
    {"robitx/gp.nvim",
     config = function()
        local conf = {
            providers = {
                openai = {
                    endpoint = "http://ai-gateway.optiver.us:54321/openai/chat/completions",
                    secret = os.getenv("OPENAI_API_KEY"),
		        },
            }
            -- For customization, refer to Install > Configuration in the Documentation/Readme
        }
        require("gp").setup(conf)

        -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
    end,
    }
})

