local options = {
    syntax = "on",
    fileencoding = "utf-8",
    visualbell = true,
    ruler = true,
    wrap = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    incsearch = true,
    autoindent = true,
    smartindent = true,
    number = true,
    swapfile = false,
    clipboard = "unnamedplus",
    laststatus = 2,
    showmode = off
}

for k, v in pairs(options) do
    vim.opt[k] = v
  end

  vim.cmd "set whichwrap+=<,>,[,],h,l"
  vim.cmd [[set iskeyword+=-]]