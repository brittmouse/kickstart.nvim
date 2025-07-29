-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { vim.keymap.set({ 'n', 'i' }, '<C-s>', '<esc><cmd>update<cr>', { desc = 'Update file' }) },
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
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    keys = {
      { '-', '<cmd>Oil<cr>', desc = 'Open parent dir' },
    },
    opts = {},
  },
  {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    lazy = false,
    config = function()
      require('leap').set_default_mappings()
    end,
  },
  {
    'folke/twilight.nvim',
    opts = {},
  },
  {
    'folke/zen-mode.nvim',
    keys = {
      { '<leader>tz', '<cmd>ZenMode<cr>', desc = '[T]oggle [Z]en Mode' },
    },
    opts = {
      window = { width = 90 },
    },
  },
}
