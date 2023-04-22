-- Keep vim sessions
--nnoremap <leader>S :Obsess<CR>
--nnoremap <leader>o :source Session.vim<CR>
vim.keymap.set("n", "<leader>S", "<cmd>Obsess<CR>")
vim.keymap.set("n", "<leader>o", "<cmd>source Session.vim<CR>")

vim.cmd [[
augroup ObsessionGroup
  autocmd!
  " When opening a file, start recording the Vim session with its tabs and splits.
  " If Vim is called without arguments and there is already a session file,
  " source it and record the session.
  " Checking 'modified' avoids recording a session when reading from stdin.
  " From https://github.com/tpope/vim-obsession/issues/17
  " !argc() makes sure we only source a session file if Vim was started without arguments.
  " Otherwise we would open an old session instead of opening a file when calling 'vim my_file'.
  " Calling Obsession when the session is being recorded would pause the recording,
  " that's why we check if v:this_session is empty.
  autocmd VimEnter * nested
      \ if !&modified && isdirectory(argv(0)) |
      \   if filereadable('Session.vim') |
      \     source Session.vim |
      \     echo "Existing session sourced, recording session" |
      \   elseif empty(v:this_session) |
      \     Obsession |
      \     echo "Started new session" |
      \   endif |
      \ endif
augroup END
]]


