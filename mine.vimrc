





command! Greet echo "Hello there!"

" function! nerdtree#ui_glue#setupCommands() abort
"     command! -n=? -complete=dir -bar NERDTree :call g:NERDTreeCreator.CreateTabTree('<args>')
"     command! -n=? -complete=dir -bar NERDTreeToggle :call g:NERDTreeCreator.ToggleTabTree('<args>')
"     command! -n=0 -bar NERDTreeClose :call g:NERDTree.Close()
"     command! -n=1 -complete=customlist,nerdtree#completeBookmarks -bar NERDTreeFromBookmark call g:NERDTreeCreator.CreateTabTree('<args>')
"     command! -n=0 -bar NERDTreeMirror call g:NERDTreeCreator.CreateMirror()
"     command! -n=? -complete=file -bar NERDTreeFind call s:findAndRevealPath('<args>')
"     command! -n=0 -bar NERDTreeRefreshRoot call s:refreshRoot()
"     command! -n=0 -bar NERDTreeFocus call NERDTreeFocus()
"     command! -n=0 -bar NERDTreeCWD call NERDTreeCWD()
" endfunction
