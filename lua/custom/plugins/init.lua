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
          require('CopilotChat').setup {
            headers = {
              user = '👤 You',
              assistant = '🤖 Copilot',
            },
            mappings = {
              -- Remove the default q / C-c mappings
              close = {
                normal = '',
                insert = '',
              },
              -- Don't specify callback
            },
          }
        end,
      },
    },
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
      },
      display = {
        flavor = 'accent',
        swap_icons = true,
      },
    },
  },
}
