" This for plugin 'yaegassy/coc-intelephense'
" Quickly view a list of all coc.nvim commands
nnoremap <silent> <C-S-p> :<C-u>CocCommand<CR>

" Run PHPUnit for current project
command! -nargs=0 PHPUnit :call CocAction('runCommand', 'intelephense.phpunit.projectTest')

" Run PHPUnit for current file
command! -nargs=0 PHPUnitCurrent :call CocAction('runCommand', 'intelephense.phpunit.fileTest', ['%'])

" Run PHPUnit for single (nearest) test
nnoremap <leader>te :call CocAction('runCommand', 'intelephense.phpunit.singleTest')<CR>
