local options = {

}

for k, v in pairs(options) do
    vim.opt[k] = v
  end

  vim.cmd "set whichwrap+=<,>,[,],h,l"
  vim.cmd [[set iskeyword+=-]]