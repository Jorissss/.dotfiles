" plugins
call plug#begin('~/.vim/plugged')
  Plug 'gruvbox-community/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
  Plug 'godlygeek/tabular'
  Plug 'jiangmiao/auto-pairs'
"  Plug 'preservim/vim-markdown'
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
set laststatus=3
set scrolloff=10
set expandtab
set shell=zsh
set backupskip=/tmp/*
set mouse=a

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
