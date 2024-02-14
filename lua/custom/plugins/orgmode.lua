return {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
    { 'brianjriddle/org-bullets.nvim', lazy = true },
  },
  event = 'VeryLazy',
  config = function()
    -- Load treesitter grammar for org
    require('orgmode').setup_ts_grammar()
    require('org-bullets').setup()

    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/org/journal/*',
      org_default_notes_file = '~/org/journal.org',
      org_archive_location = '~/org/journal/journal.org_archive',
      org_startup_folded = 'showeverything',
      org_capture_templates = {
        b = {
          description= 'Blank',
          template = '** %?',
          target = '~/org/journal/journal.org'
        },
      }
    })
  end,
}
