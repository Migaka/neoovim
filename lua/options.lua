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


