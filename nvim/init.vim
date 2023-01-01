set number
set mouse=a
set tabstop=4
set shiftwidth=4

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/work/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/work/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'preservim/nerdtree'
NeoBundle 'neoclide/coc.nvim', 'release'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'nvim-lua/plenary.nvim'
NeoBundle 'nvim-lua/telescope.nvim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
lua require('keymap')
