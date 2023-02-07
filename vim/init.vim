:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set autochdir

:vmap <Tab> >
:vmap <S-Tab> <

call plug#begin()
	Plug 'https://github.com/tpope/vim-surround'
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/tc50cal/vim-terminal'
	Plug 'https://github.com/neoclide/coc.nvim'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
	Plug 'https://github.com/nvim-tree/nvim-web-devicons'
	Plug 'https://github.com/romgrk/barbar.nvim'
call plug#end()

"NEDTree
" open and close NERDTree
nnoremap <C-b>	:NERDTreeToggle<CR>


"coc
" confirm completion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"


"Barbar
" Move through tabs
nnoremap <silent>    <C-S-Tab> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <M-Left> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-Tab> <Cmd>BufferNext<CR>
nnoremap <silent>    <M-Right> <Cmd>BufferNext<CR>

" Move tabs
nnoremap <silent>    <M-S-Left> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <M-S-Right> <Cmd>BufferMoveNext<CR>

" Move in a specific tab
nnoremap <silent>    <M-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <M-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <M-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <M-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <M-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <M-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <M-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <M-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <M-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <M-0> <Cmd>BufferLast<CR>

" Pin a tab
nnoremap <silent>	 <M-p> <Cmd>BufferPin<CR>

" Close a tab
nnoremap <silent>	 <M-Del> <Cmd>BufferClose<CR>


"markdown-preview-enhanced
" open markdown preview
nnoremap <silent>	 <M-m> :CocCommand markdown-preview-enhanced.openPreview<CR>
