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
