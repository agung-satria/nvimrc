" Easymotion
let g:EasyMotion_do_mapping = 1 " Disable default mappings
let g:EasyMotion_smartcase = 1 " turn on case insensitive feature
let g:EasyMotion_use_smartsign_us = 1 " 1 will match 1 and !
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap zs <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap zs <Plug>(easymotion-overwin-f2)

" <Leader>f{char} to move to {char}
map  <Leader>zf <Plug>(easymotion-bd-f)
nmap <Leader>zf <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>zl <Plug>(easymotion-bd-jk)
nmap <Leader>zl <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>a <Plug>(easymotion-bd-w)
nmap <Leader>a <Plug>(easymotion-overwin-w)

"  Integration with incsearch.vim 
" require: 
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and sometimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

" Normal search mapping should be
" noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
" noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
" noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" map z/ <Plug>(incsearch-easymotion-/)
" map z? <Plug>(incsearch-easymotion-?)
" map zg/ <Plug>(incsearch-easymotion-stay)
map z/ <Plug>(incsearch-easymotion-stay)
