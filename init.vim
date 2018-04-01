call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kaicataldo/material.vim'
call plug#end()
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-m> :NERDTreeToggle<CR>
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#flow#flow_bin = 'flow'
:set number
let g:javascript_plugin_flow = 1

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
:set tabstop=2
:set shiftwidth=2
:set expandtab
set background=dark
colorscheme material
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
let g:material_terminal_italics = 1
