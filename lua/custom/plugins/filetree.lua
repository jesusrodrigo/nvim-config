vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },

  config = function()
    require('neo-tree').setup {}

    vim.keymap.set('n', '<leader>m', function()
      require('neo-tree.command').execute {
        action = 'focus', -- OPTIONAL, this is the default value
        source = 'filesystem', -- OPTIONAL, this is the default value
        position = 'left', -- OPTIONAL, this is the default value
      }
    end, { desc = 'Open neo-tree' })

    vim.keymap.set('n', '<leader>n', function()
      require('neo-tree.command').execute {
        action = 'close', -- OPTIONAL, this is the default value
        source = 'filesystem', -- OPTIONAL, this is the default value
        position = 'left', -- OPTIONAL, this is the default value
      }
    end, { desc = 'Close neo-tree' })
  end,
}

-- vim: ts=2 sts=2 sw=2 et
