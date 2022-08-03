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
