return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>t', function()
      vim.cmd.Neotree 'toggle'
    end, { desc = 'Toggle Neo[T]ree' })

    require('neo-tree').setup {
      window = {
        mappings = {
          ['<space>'] = false,
        },
      },
    }
  end,
}
