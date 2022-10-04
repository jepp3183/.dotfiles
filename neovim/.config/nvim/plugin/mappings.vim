imap jj <Esc>
imap kk <C-N>
nnoremap <tab> >>_
nnoremap <S-tab> <<_
vnoremap <tab> >gv
vnoremap <S-tab> <gv
map <Enter> o<ESC>k
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-j> }
nnoremap <C-k> {
imap <silent><script><expr> <C-Enter> copilot#Accept("\<CR>")
