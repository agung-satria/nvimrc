nmap <silent> <C-e> <Plug>(ale_next_wrap)

" Showing the number of errors and warnings
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf(
        \   '%d⨉ %d⚠ ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction
set statusline+=%=
set statusline+=\ %{LinterStatus()}


let g:ale_lint_on_enter = 0 "Don’t lint when opening a file
let g:ale_lint_on_save = 1

" Making it prettier
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

" ref: https://medium.com/@victormours/better-linting-in-vim-with-ale-1e4b1d5789af
" Plug 'dense-analysis/ale'
