syntax on
" https://stackoverflow.com/questions/3534028/mac-terminal-vim-will-only-use-backspace-when-at-the-end-of-a-line
set nu hls nowrap et  sw=4 sts=4 cc=80 bs=indent,eol,start

set pastetoggle=<F2> laststatus=2

"
" https://superuser.com/questions/246046/how-can-i-include-vim-settings-in-source-code-so-that-the-file-is-displayed-the
set modeline
set visualbell t_vb=


" https://stackoverflow.com/a/21000307/2943445
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

colorscheme evening
" https://stackoverflow.com/a/21572296
hi Normal ctermbg=none
hi Visual term=reverse cterm=reverse guibg=Grey
hi Constant ctermfg=red

filetype plugin indent on

" http://shallowsky.com/blog/linux/editors/vim-ctrl-space.html
" https://stackoverflow.com/questions/24983372/what-does-ctrlspace-do-in-vim
" https://stackoverflow.com/questions/7722177/how-do-i-map-ctrl-x-ctrl-o-to-ctrl-space-in-terminal-vim/7725796#7725796
" ctrl-space quits insert mode and does bad things.
" Stop that!
" One way of testing: :^K^space:
" Other possible ways of saying it: <Nul>, <Char-0>, <C-^V >, <C-@>
" p0g on #vim finally found the answer: imap is the important one.
"
" imap <Nul> <Space>
imap <Nul> <Nop>
map <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>

" Fix "E382: Cannot write, 'buftype' option is set"
" https://github.com/vim/vim/issues/2329
autocmd BufRead scp://* :set bt=acwrite

" https://blog.csdn.net/weixin_36250487/article/details/79888103
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" https://stackoverflow.com/questions/36601789/disable-for-good-vims-number-increment-that-is-mapped-to-ctrl-a
map <C-a> <Nop>
