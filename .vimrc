set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" tree on the left site
Plugin 'scrooloose/nerdtree.git'

"How can I close vim if the only window left open is a NERDTree?
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"cannot make its working

"How can I map a specific key or shortcut to open NERDTree?
map <f4> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

Plugin 'tpope/vim-fugitive'
" 
" Plugin 'Buffergator'

" ex. mrf
Plugin 'kien/ctrlp.vim'
" browsking source code
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

Plugin 'bling/vim-airline'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/syntastic'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
Plugin 'rdnetto/YCM-Generator'

Plugin 'gerw/vim-latex-suite'
autocmd FileType tex imap <f2> <Esc>:w<cr><leader>ll<C-O>a
autocmd FileType tex nmap <f2> <Esc>:w<cr><leader>ll
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_BibtexFlavor = 'biber'
let g:Tex_CompileRule_bib = g:Tex_BibtexFlavor . ' $*'
let g:Tex_MultipleCompileFormats='pdf,dvi'
let g:Tex_CompileRule_pdf='pdflatex --shell-escape -interaction=nonstopmode $*'

Plugin 'KabbAmine/zeavim.vim'
nmap NEW_MAPPING <Plug>Zeavim         " <leader>z (NORMAL mode)
vmap NEW_MAPPING <Plug>ZVVisSelection " <leader>z (VISUAL mode)
nmap NEW_MAPPING <Plug>ZVKeyword      " <leader>Z
nmap NEW_MAPPING <Plug>ZVKeyDocset    " <leader><leader>z

Plugin 'xuhdev/SingleCompile'
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

filetype plugin indent on

" tags:
set tags=tags;
"set autochdir

map <f3> :setlocal spell spelllang=en_us<cr>:set spellfile=./en.utf-8.add<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


"This is the easiest way that I found, to switch between tabs faster and
"simple. "Add next lines to your .vimrc and enjoy it, more tricks about vim tabs here.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
