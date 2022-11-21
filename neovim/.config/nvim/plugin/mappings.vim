imap jj <Esc>
imap jk <Esc>

map <Enter> o<ESC>k

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <C-N> <C-\><C-N>

nnoremap <leader>t :NERDTreeToggle<CR>

" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz
noremap <C-j> 5j
noremap <C-k> 5k
nnoremap <C-h> <cmd>bprev<cr>
nnoremap <C-l> <cmd>bnext<cr>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :bd<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fo <cmd>Telescope coc document_symbols<cr>
nnoremap <leader>fr <cmd>Telescope coc references_used<cr>
nnoremap <leader>fd <cmd>Telescope coc workspace_diagnostics<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

let g:surround_no_mappings = 1
nmap ds       <Plug>Dsurround
nmap cs       <Plug>Csurround
nmap cS       <Plug>CSurround
nmap ys       <Plug>Ysurround
nmap yS       <Plug>YSurround
nmap yss      <Plug>Yssurround
nmap ySs      <Plug>YSsurround
nmap ySS      <Plug>YSsurround
xmap gs       <Plug>VSurround
xmap gS       <Plug>VgSurround
