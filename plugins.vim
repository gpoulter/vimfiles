" Save yankring in ~/.vim
let g:yankring_history_dir = '~/.vim'

" Don't nest XML
let xml_no_auto_nesting=1

" Set .css as compiled form of .less
let g:alternateExtensions_less = "css"
let g:alternateExtensions_css = "less"

" Set .js as compiled form of .coffee
let g:alternateExtensions_coffee = "js"
let g:alternateExtensions_iced = "js"
let g:alternateExtensions_js = "coffee,iced"

" ack.vim: Define command
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" vim-preview: Browser preferences
let g:PreviewBrowsers='google-chrome,firefox,opera,chromium-browser,safari,epiphany'

" NERDTree settings
let NERDTreeIgnore=['\.swp$']

" Single-space indent in zencoding
let g:user_zen_settings = { 'indentation' : ' ' }

" Use c-k for zencoding to avoid clobbering c-y scrolling
"let g:user_zen_leader_key = '<c-y>'

" Use XML structure for folding
let g:xml_syntax_folding = 1

" Python mode settings
let g:pymode_lint_checker = 'pylint'
let g:pymode_lint_checker = 'pyflakes'
let g:pymode_lint_ignore = 'I,E501,C0111'

