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
      if vim.bo.filetype == 'neo-tree' then
        vim.cmd.wincmd 'p'
      else
        vim.cmd.Neotree 'focus'
      end
    end, { desc = 'Toggle Neo[T]ree Focus' })

    vim.keymap.set('n', '<leader>z', function()
      vim.cmd.Neotree('toggle', 'reveal')
    end, { desc = 'Toggle NeoTree' })

    require('neo-tree').setup {
      window = {
        mappings = {
          ['<space>'] = false,
        },
        width = 100,
      },
    }
  end,
}
