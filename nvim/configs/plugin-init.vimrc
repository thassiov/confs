"*****************************************************************************
"" Vim-PLug core
" originally from http://vim-bootstrap.com/
"*****************************************************************************
if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "javascript"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Splash screen
Plug 'mhinz/vim-startify'

" Status line
Plug 'vim-airline/vim-airline'

" File explorer and navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kshenoy/vim-signature'

" awesome floating terminal
Plug 'voldikss/vim-floaterm'

" colorscheme
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'josuegaleas/jay'
Plug 'ryanoasis/vim-devicons'

" Analytics
Plug 'wakatime/vim-wakatime'

" Code assist
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" For my writting
Plug 'junegunn/goyo.vim'

" This hot new shiny stuff
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc extensions
let g:coc_global_extensions = [
            \'coc-marketplace',
            \'coc-snippets',
            \'coc-ultisnips',
            \'coc-tslint',
            \'coc-tsserver',
            \'coc-eslint',
            \'coc-go',
            \'coc-json',
            \'coc-html',
            \'coc-css',
            \'coc-markdownlint',
            \'coc-yaml',
            \]

" Debugger @TODO test this plugin
" Plug 'vim-vdebug/vdebug'

" For project-specific configuration
" NOTE: requires npm install -g editorconfig !!!!
Plug 'editorconfig/editorconfig-vim'
"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.config/nvimrc.local.bundles"))
  source ~/.config/nvimrc.local.bundles
endif

call plug#end()

set nocp
filetype plugin on 
