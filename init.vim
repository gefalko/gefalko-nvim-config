call plug#begin('~/.config/nvim/plugged')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " autocomplition
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " coc extensions
  " typescript
  Plug 'ianks/vim-tsx'
  Plug 'peitalin/vim-jsx-typescript'
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  " Plug 'quramy/tsuquyomi'
  " Plug 'HerringtonDarkholme/yats.vim'
  Plug 'dense-analysis/ale'
  Plug 'https://github.com/tpope/vim-fugitive.git'
  Plug 'https://github.com/airblade/vim-gitgutter.git'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'https://github.com/easymotion/vim-easymotion.git'
  Plug 'dyng/ctrlsf.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Snippest
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()

let mapleader=" "

let g:ale_fixers = ['prettier', 'eslint']

let g:deoplete#enable_at_startup = 1

nnoremap <c-a> :NERDTree<cr>
nnoremap <c-f> :NERDTreeFind<cr>
nnoremap <c-d> :ALEGoToDefinition -split<cr>
nnoremap <c-p> :Prettier<cr>
nnoremap <c-s> :Prettier<cr>:w<cr>
nnoremap <c-o> :only<cr>

" command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Prettier :ALEFix

:set number

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" map CTRL-E to end-of-line (insert mode)
imap <C-e> <esc>$i<right>
" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>0i

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

:let g:NERDTreeWinSize=50

" snippest
" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" Customize colors
hi Pmenu ctermbg=blue ctermfg=white
