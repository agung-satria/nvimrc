" let g:user_emmet_mode='i'
" let g:user_emmet_leader_key=','
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall

" vim-snippets override this mapping,
" Now it can be use like vscode without <C-y>,, or hh
imap hh <ESC><C-y>,i
