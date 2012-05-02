if !exists("autocommands_loaded")
  let autocommands_loaded = 1

" Dont do it when writing a commit log entry
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction
autocmd BufReadPost * call SetCursorPosition()

" Set Apache indentation
autocmd FileType apache setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set CoffeeScript indentation (bundle/vim-coffee-script)
autocmd FileType coffee setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set CoffeeScript indentation (bundle/vim-coffee-script)
autocmd FileType cucumber setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set HTML indentation
autocmd FileType html setlocal softtabstop=1 tabstop=1 shiftwidth=1 expandtab |let syntastic_quiet_warnings=1

" Set JSON to use JavaScript settings
autocmd BufNewFile,BufRead *.json setlocal filetype=javascript

" Set JavaScript indentation
autocmd FileType javascript setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set LessCSS indentation (bundle/vim-less)
autocmd FileType less setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set Markdown indentation
autocmd FileType markdown setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set PHP indentation
autocmd FileType markdown setlocal softtabstop=4 tabstop=4 shiftwidth=4 noexpandtab

" Python smartindent settings
autocmd FileType python setlocal autoindent cindent smartindent smarttab expandtab softtabstop=4 tabstop=4 shiftwidth=4 shiftround foldnestmax=2 cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Set Ruby indentation
autocmd FileType ruby setlocal autoindent softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1

" Set Shell indentation
autocmd FileType sh setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab foldnestmax=1

" Set Vim indentation
autocmd FileType vim setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=1

" Set XML indentation
autocmd FileType xml setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab foldnestmax=3 foldmethod=marker

" Compile CoffeeScript on save (fails silently if coffee not found)
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Compile IcedCoffeeScript on save, places runtime on window object
autocmd BufWritePost,FileWritePost *.iced :silent !iced -I window -c <afile>

" Compile LessCSS on save (fails silently if lessc not found)
autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:r.css

endif

" vim:sts=0:ts=2:sw=2
