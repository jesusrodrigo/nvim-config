return {
  'olexsmir/gopher.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-treesiter/nvim-treesiter',
  },
  opts = {
    commands = {
      go = 'go',
      gomodifytags = 'gomodifytags',
      gotests = '~/go/bin/gotests', -- also you can set custom command path
      impl = 'impl',
      iferr = 'iferr',
    },
  },
}
