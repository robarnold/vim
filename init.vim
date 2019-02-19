let g:zenburn_high_Contrast = 1
colorscheme zenburn
hi search ctermbg=223 ctermfg=238
hi incsearch ctermbg=216 ctermfg=242

se nu
se et
se sw=2
se ts=2
filetype on
au FileType c,cpp,java,h,hpp :se cin
au FileType python,html,xml,javascript :se ai
se popt=paper:letter
se list listchars=tab:>~,trail:.
se encoding=utf-8
se noswapfile
se ff=unix
se ffs=unix,dos
" Breaks ALE
"se shell=powershell
" Undo some nvim defaults
se noautoread
autocmd BufEnter,FocusGained * checktime

let g:ctrlp_max_files = 0
let g:ctrlp_lazy_update = 400
let g:ctrlp_custom_ignore = {
\  'dir': '\v[\/]offline-package-cache|node_modules|\.(git|hg)$',
\  }
let g:ctrlp_clear_cache_on_exit = 0

let g:ale_lint_on_insert_leave = 1
let g:ale_line_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'css': ['prettier'],
\  'less': ['prettier'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'javascript': ['eslint', 'flow-language-server', 'prettier'],
\  'rust': ['rls'],
\}
let g:ale_fixers = {
\  'css': ['prettier'],
\  'javascript': ['eslint', 'prettier'],
\  'rust': ['rustfmt'],
\}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_prettier_options = '--no-bracket-spacing --jsx-bracket-same-line --single-quote --trailing-comma=all'
let g:ale_rust_rls_toolchain = 'stable'

packadd rust.vim-master

nmap ;f :ALEFix<CR>
nmap ;d :ALEGoToDefinition<CR>
