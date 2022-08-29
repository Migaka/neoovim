local options = {
    syntax = "on",
    fileencoding = "utf-8",
    visualbell = true,
    ruler = true,
    wrap = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    ignorecase = true,
    smartcase = true,
    smartindent = true,
    smarttab = true,
    expandtab = true,
    incsearch = true,
    autoindent = true,
    smartindent = true,
    number = true,
    swapfile = false,
    clipboard = "unnamedplus",
    laststatus = 2,
    showmode = off,
    conceallevel = 0,
    cmdheight = 1,
    showmode = false,
    showtabline = 0,
    termguicolors = true,
    splitbelow = true,
    splitright = true,
    mouse = "a"
}

for k, v in pairs(options) do
    vim.opt[k] = v
  end

  vim.cmd "set whichwrap+=<,>,[,],h,l"
  vim.cmd [[set iskeyword+=-]]

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "html-lsp" }
})

-- The setup config table shows all available config options with their default values:
require("presence"):setup({
    -- General options
    auto_update         = true,
    neovim_image_text   = "The One True Text Editor",
    main_image          = "neovim",
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},

    -- Rich Presence text options
    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
    line_number_text    = "Line %s out of %s",
})

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        --["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
      find_files = {
          hidden = true
        }  
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
-- Nvim-tree-lua
require("nvim-tree").setup({
sort_by = "case_sensitive",
view = {
  width = 28,
  mappings = {
    list = {
      { key = "u", action = "dir_up" },
    },
  },
},
renderer = {
  group_empty = true,
},
filters = {
  dotfiles = true,
},
})
