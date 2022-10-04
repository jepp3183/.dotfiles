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
tnoremap <C-k> <Cmd>wincmd k<CR>

nnoremap <leader>t :NERDTreeToggle<CR>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-j> }
nnoremap <C-k> {

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fo <cmd>Telescope coc document_symbols<cr>
nnoremap <leader>fr <cmd>Telescope coc references_used<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
