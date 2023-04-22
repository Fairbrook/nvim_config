vim.g.lazygit_use_neovim_remote = 1
vim.cmd [[
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
]]
vim.keymap.set("n", "<leader>gg", "<cmd>silent LazyGit<CR>")

