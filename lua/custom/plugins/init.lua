-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- Example for Mason setup with tabout.nvim
-- In your init.lua or in custom.plugins.init.lua
-- /home/vchennuru/.config/nvim/lua/custom/plugins/init.lua

return {
  {
    'abecodes/tabout.nvim',
    config = function()
      require('tabout').setup {
        tabkey = '<Tab>',
        backwards_tabkey = '<S-Tab>',
        act_as_tab = true,
        act_as_shift_tab = false,
        default_tab = '<C-t>',
        default_shift_tab = '<C-d>',
        enable_backwards = true,
        completion = false,
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = '`', close = '`' },
          { open = '(', close = ')' },
          { open = '[', close = ']' },
          { open = '{', close = '}' },
        },
        ignore_beginning = true,
        exclude = {},
      }
    end,
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'L3MON4D3/LuaSnip', 'hrsh7th/nvim-cmp' },
    event = 'InsertCharPre', -- Triggered on Insert mode
    priority = 1000, -- Loading priority
  },
  -- Add other plugins here
}
