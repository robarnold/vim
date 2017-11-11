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
