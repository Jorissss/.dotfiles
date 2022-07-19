call plug#begin('~/.vim/plugged')
  Plug 'gruvbox-community/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'tpope/vim-commentary',
  Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
  Plug 'ray-x/lsp_signature.nvim'
call plug#end()

" set clipboard+=unnamedplus
autocmd!

scriptencoding utf-8

set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=zsh
set backupskip=/tmp/*
set signcolumn=yes

if has('nvim')
  set inccommand=split
endif

set t_BE=

set nosc noru nosm

set lazyredraw
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap
set backspace=start,eol,indent

set path+=**

autocmd InsertLeave * set nopaste

set formatoptions+=r

set termguicolors
colorscheme gruvbox
set background=dark
set cursorline
set number
set showcmd
set showtabline=1
" set completeopt-=preview
