" Native configs
" ---------------
" Show line number
set number

" Don't wrap lines
set nowrap

" Mouse enable
set mouse=a

" Tab indentation
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab



" Plugins management
" ------------------
" To install plugin manager run :
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 
" All plugins setup must be placed between the 'call' calls

call plug#begin('~/.local/share/nvim/plugged')

    " The plugin manager itself
    Plug 'davidhalter/jedi-vim'

    " Autocompletion and goto definition
    " :PlugInstall deoplete-jedi
    Plug 'zchee/deoplete-jedi'
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
        "  auto close window when autocompletion is done
        autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
        " show autocomplete at right
        set splitright
        " navigate completion list with tab
        inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
        let g:deoplete#enable_at_startup = 1


    " Colorscheme
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    colorscheme onehalfdark
    

    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='base16'
    let g:airline_powerline_fonts = 1


    " Automatic quotes and braquets
    Plug 'jiangmiao/auto-pairs'

    
    " Comments
    Plug 'scrooloose/nerdcommenter'
    filetype plugin on
    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'


    " Folder tree
    Plug 'scrooloose/nerdtree'

    
    " Code checker
    Plug 'neomake/neomake'
        " python
        let g:neomake_python_enabled_makers = ['pylint']
        " autocheck
        " call neomake#configure#automake('nrwi', 500)


    " Highlight yank
    Plug 'machakann/vim-highlightedyank'
    let g:highlightedyank_highlight_duration = 2000

    " Simple folding
    " zf : Create fold
    " zo : Open fold in current position
    " zO : Open fold and subfold in current cursor position recursively
    " zc : Close fold in current position
    " zC : Close fold and subfold in current cursor position recursively
    Plug 'tmhedberg/SimpylFold'
        highlight Folded guibg=grey guifg=blue
        highlight FoldColumn guibg=darkgrey guifg=white



    call plug#end()

