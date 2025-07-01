-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rose-pine/neovim',
    name = 'rosepine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      require('oil').setup {
        vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent dir' }),
      }
    end,
  },
  {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    lazy = false,
    config = function()
      require('leap').set_default_mappings()
    end,
  },
}
