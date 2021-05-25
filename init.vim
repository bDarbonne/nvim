
set autoread
set expandtab
set ignorecase
set number
syntax enable
"set laststatus=2
set nobackup
set nowritebackup
set noswapfile
set mouse=a
set path+=**
set shiftround
set shiftwidth=2
set smartcase
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set wildmenu
set nowrap


let mapleader=","

filetype indent plugin on
command! MakeTags !ctags -R .

" mappings
nnoremap <C-TAB> :tabnext<Enter>
vnoremap < <gv
vnoremap > >gv
map <leader>w :w<cr>
map <leader>e :!%:p<cr>
map <tab> <c-w>w
map <s-tab> <c-w><s-w>

" Toggle terminal on/off (neovim)
nnoremap <A-t> :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>


" NETRW
let g:netrw_altv=1
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_liststyle=3
let g:netrw_winsize=25

" Vundle
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'
Plugin 'honza/dockerfile.vim'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-commentary'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'w0rp/ale'
Plugin 'yuratomo/dbg.vim'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'nginx.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'pangloss/vim-javascript'
call vundle#end()
filetype plugin indent on
" end Vundle


" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
  if win_gotoid(g:term_win)
    hide
  else
    botright new
    exec "resize " . a:height
    try
      exec "buffer " . g:term_buf
    catch
      call termopen($SHELL, {"detach": 0})
      let g:term_buf = bufnr("")
      set nonumber
      set norelativenumber
      set signcolumn=no
    endtry
    startinsert!
    let g:term_win = win_getid()
  endif
endfunction

"
" Plugin configs
"

" nerdtree
nmap <C-n> :NERDTreeToggle<Enter>

source $HOME/.config/nvim/omnisharp.vimrc
source $HOME/.config/nvim/coc.vimrc
" source $HOME/.config/nvim/markdown-preview.vimrc
source $HOME/.config/nvim/material.vimrc
source $HOME/.config/nvim/pangloss_vim-javascript.vimrc
source $HOME/.config/nvim/mine.vimrc

colorscheme material




"
" other stuffs
"
augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.bashrc set syntax=sh
augroup END
