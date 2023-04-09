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
	Plug 'https://github.com/neoclide/coc.nvim'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
	Plug 'https://github.com/catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'https://github.com/nvim-tree/nvim-web-devicons'
	Plug 'https://github.com/romgrk/barbar.nvim'
	Plug 'https://github.com/kassio/neoterm'
	Plug 'https://github.com/nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
	Plug 'https://github.com/numToStr/FTerm.nvim'
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


"catppuccin
" theme
colorscheme catppuccin-mocha


""neovide
"" transparency
let g:neovide_transparency=0.9


""FTerm
"" shortchut for terminal
nnoremap <silent>	<M-t> :Terminal<CR>


lua << EOF
	--indent-blankline
	-- space and end-of-line
	vim.opt.list = true
	vim.opt.listchars:append "space:⋅"
	vim.opt.listchars:append "eol:↴"

	require("indent_blankline").setup {
		space_char_blankline = " ",
		show_current_context = true,
		show_current_context_start = true,
	}

	--FTerm
	-- setup
	require("FTerm").setup({
		border="double",
		dimensions={
			height=0.9,
			width=0.9,
		},
	})

	-- creating a command to toggle the terminal
	vim.api.nvim_create_user_command(
		"Terminal",
		require("FTerm").toggle,
		{ bang=true }
	)
EOF
