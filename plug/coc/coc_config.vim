"COC配置文件

let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_global_extensions = [
      \ 'coc-tabnine',
      \ 'coc-diagnostic',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-python',
      \ 'coc-go',
      \ 'coc-snippets',
      \ 'coc-yaml',
      \ 'coc-git',
      \ 'coc-vimlsp',
      \ 'coc-highlight',
      \ 'coc-spell-checker',
      \ 'coc-emoji',
      \ 'coc-lists',
      \ 'coc-gitignore',
      \ 'coc-actions',
      \ 'coc-db',
      \ 'coc-yank']
vmap <A-m> <Plug>(coc-codeaction-selected)<CR>
nmap <A-m> <Plug>(coc-codeaction-selected)<CR>
augroup coc_event
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


let g:coc_start_at_startup=0
function! CocTimerStart(timer)
    exec "CocStart"
endfunction
call timer_start(500,'CocTimerStart',{'repeat':1})

"解决coc.nvim大文件卡死状况
let g:trigger_size = 0.5 * 1048576

augroup hugefile
  autocmd!
  autocmd BufReadPre *
        \ let size = getfsize(expand('<afile>')) |
        \ if (size > g:trigger_size) || (size == -2) |
        \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
        \   exec 'CocDisable' |
        \ else |
        \   exec 'CocEnable' |
        \ endif |
        \ unlet size
augroup END

