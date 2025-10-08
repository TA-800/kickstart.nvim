-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      {
        'nvim-lua/plenary.nvim',
        branch = 'master',
        config = function()
          local copilot = require 'CopilotChat'
          copilot.setup {
            mappings = {
              -- Remove the default mappings for closing the chat buffer
              close = {
                normal = '',
                insert = '',
                callback = copilot.close,
              },
            },
          }
        end,
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
    },
    config = function()
      local actions = require 'diffview.actions'
      require('diffview').setup {
        keymaps = {
          view = {
            { 'n', 'q', actions.close, { desc = 'Close help menu' } },
          },
          file_panel = {
            { 'n', 'q', '<cmd>DiffviewClose<cr>', { desc = 'Close help menu' } },
          },
          file_history_panel = {
            { 'n', 'q', '<cmd>DiffviewClose<cr>', { desc = 'Close help menu' } },
          },
        },
      }
    end,
  },
  {
    'vyfor/cord.nvim',
    opts = {
      editor = {
        tooltip = 'Moving at the speed of thought',
      },
      text = {
        file_browser = false,
        plugin_manager = false,
        -- Ignore when interacting with copilot-chat
        viewing = function(opts)
          if string.find(opts.filename, 'copilot') then
            return 'Thinking...'
          else
            return 'Viewing ' .. opts.filename
          end
        end,
        editing = function(opts)
          if string.find(opts.filename, 'copilot') then
            return 'Thinking...'
          else
            return 'Editing ' .. opts.filename
          end
        end,
      },
      display = {
        flavor = 'accent',
        swap_icons = true,
      },
    },
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },
  },

  'mbbill/undotree',

  -- Treesitter modules, :help nvim-treesitter-modules
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
}
