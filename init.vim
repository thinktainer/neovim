"dein Scripts-----------------------------
" Required:
set runtimepath^=/home/thinktainer/.config/nvim/plugins/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/home/thinktainer/.config/nvim/plugins/dein.vim'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('fsharp/vim-fsharp', {'build': 'make fsautocomplete'})
call dein#add('Shougo/deoplete.nvim')
call dein#add('kylef/apiblueprint.vim.git')
call dein#add('Townk/vim-autoclose.git')
call dein#add('chriskempson/base16-vim.git', {'rev': 'f3022fb1fdeff22f99a4b4278c8f44c1131836cd'})
call dein#add('elixir-lang/vim-elixir.git')
call dein#add('tpope/vim-fugitive.git')
call dein#add('mattn/gist-vim.git', {'depends': 'mattn/webapi-vim'})
call dein#add('mattn/webapi-vim')
call dein#add('guns/vim-clojure-highlight')
call dein#add('guns/vim-clojure-static')
call dein#add('guns/vim-sexp')
call dein#add('tpope/vim-leiningen')
call dein#add('tpope/vim-sexp-mappings-for-regular-people')
call dein#add('SevereOverfl0w/async-clj-omni')
call dein#add('scrooloose/nerdcommenter.git')
call dein#add('saltstack/salt-vim.git')
call dein#add('scrooloose/syntastic.git')
call dein#add('godlygeek/tabular.git')
call dein#add('pivotal/tmux-config.git')
call dein#add('edkolev/tmuxline.vim.git')
call dein#add('sjl/tslime.vim.git')
call dein#add('bling/vim-airline.git')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tpope/vim-bundler.git')
call dein#add('tpope/vim-cucumber.git')
call dein#add('tpope/vim-dispatch.git')
call dein#add('tpope/vim-fireplace.git')
call dein#add('facebook/vim-flow.git')
call dein#add('pangloss/vim-javascript.git')
call dein#add('mxw/vim-jsx.git')
call dein#add('lepture/vim-jinja.git')
call dein#add('elzr/vim-json.git')
call dein#add('tpope/vim-characterize.git')
call dein#add('tpope/vim-leiningen.git')
call dein#add('tpope/vim-markdown.git')
call dein#add('tpope/vim-projectionist.git')
call dein#add('rodjek/vim-puppet.git')
call dein#add('tpope/vim-ragtag.git')
call dein#add('tpope/vim-rails.git')
call dein#add('tpope/vim-rbenv.git')
call dein#add('vim-ruby/vim-ruby.git')
call dein#add('tpope/vim-surround.git')
call dein#add('tpope/vim-unimpaired.git')
call dein#add('jimenezrick/vimerl')
call dein#add('Quramy/vison.git')
call dein#add('hashivim/vim-terraform')
call dein#add('Shougo/vimproc.vim')
call dein#add('Shougo/unite.vim.git')
call dein#add('elmcast/elm-vim')
call dein#add('slim-template/vim-slim.git')
call dein#add('KabbAmine/zeavim.vim')
call dein#add('scrooloose/nerdtree.git')
call dein#add('Shougo/vimshell')
call dein#add('zchee/deoplete-go', { 'build': 'make' })
call dein#add('majutsushi/tagbar')
call dein#add('fatih/vim-go')
call dein#add('zchee/deoplete-jedi')
call dein#add('davidhalter/jedi-vim')
call dein#add('lambdalisue/vim-pyenv', {'merged': 0})
call dein#add('carlitux/deoplete-ternjs', {'build': 'npm i -g ternjs'})
call dein#add('ternjs/tern_for_vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"leader
let mapleader=","

" search
set ignorecase
set smartcase

" disable bell!
set noeb vb t_vb=

" visual
set number
set scrolloff=3
set laststatus=2
set hidden

" undo
set undofile

" NERDTree
let NERDTreeChDirMode=2
nnoremap <Leader>f :NERDTreeFind<ENTER><C-w><C-p>
nnoremap <Leader>n :NERDTreeToggle<Enter>


" html
au FileType html set sw=2 ts=2 et


" javascript
let g:flow#autoclose=1
au FileType javascript setl sw=2 et
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
"autocmd bufwritepost *.js silent !standard-format -w %
let g:syntastic_json_checkers = ['jsonlint']
let g:tern_request_timeout = 1
let g:tern#command = [$HOME."/.ndenv/versions/v4.4.7/bin/tern"]
let g:tern#arguments = ["--persistent"]
au BufRead,BufNewFile *.json set filetype=json
au FileType json setl sw=2 ts=2 et
au FileType javascript let maplocalleader=","

augroup js
    au!
    au FileType javascript nnoremap <LocalLeader>d :TernDef<CR>
    au FileType javascript nnoremap <LocalLeader>r :TernRename<CR>
augroup END
    

" reload changed files automatically
set autoread

" erlang
au FileType erlang set sw=2 ts=2 et
let NERDTreeIgnore=['\.beam$', '\~$']


" airline
let g:airline_powerline_fonts=1

"editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'


"base16
let base16colorspace=256  " Access colors present in 256 colorspace "

"tslime
let g:tslime_ensure_trailing_newlines=1

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

call unite#custom#source(
        \ 'file,file/new,buffer,file_rec,file_rec/neovim',
        \ 'matchers', 'matcher_fuzzy')

call unite#custom#source('file/rec_neovim,file_rec,file_rec/async', 'ignore_pattern', 'node_modules/')


"use deoplete
"neocomplete like
set completeopt+=noinsert
"deoplete.nvim recommend
set completeopt+=noselect
let g:deoplete#enable_at_startup=1
if !exists('g:deoplete#omni_input_patterns)')
    let g:deoplete#omni_input_patterns = {}
endif
let g:deoplete#omni_input_patterns.fsharp = '\.'

if !exists('g:deoplete#omni_patterns')
    let g:deoplete#omni_patterns = {}
endif
let g:deoplete#omni_patterns.fsharp = '\.'
"unite
nnoremap <silent><Leader>b :Unite buffer<CR>
nnoremap <silent><Leader>o :Unite -start-insert file_rec/neovim<CR>
nnoremap <silent><Leader>g :Unite grep:


if executable('ack')
    " Use ack
    " http://beyondgrep.com/
    let g:unite_source_grep_command = 'ack'
    let g:unite_source_grep_default_opts =
                \ '-i --no-heading --no-color -H'
    let g:unite_source_grep_recursive_opt = ''
endif

" F#, fsharp
augroup fsharp
    au!
    autocmd FileType fsharp set et ts=4 sw=4
    autocmd FileType fsharp nnoremap <buffer> <leader>r :FsiEvalBuffer<Enter>
    autocmd FileType fsharp nnoremap <buffer> <leader><space> :FsiShow<Enter>
    autocmd FileType fsharp nnoremap <buffer> <leader>c :FsiClear<Enter>
augroup END

let g:fsharp_completion_helptext = 1


" elm
let g:elm_jump_to_error = 1
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 1
"let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
au FileType elm nmap <leader>c <Plug>(elm-make)
au FileType elm nmap <leader>m <Plug>(elm-make-main)
au FileType elm nmap <leader>t <Plug>(elm-test)
au FileType elm nmap <leader>r <Plug>(elm-repl)
au FileType elm nmap <leader>e <Plug>(elm-error-detail)
au FileType elm nmap <leader>d <Plug>(elm-show-docs)
au FileType elm nmap <leader>w <Plug>(elm-browse-docs)
au FileType elm set sw=2 et ts=2
if !exists('g:deoplete#omni_input_patterns)')
    let g:deoplete#omni_input_patterns = {}
endif
au FileType elm let g:deoplete#omni_input_patterns.elm = '\.'


" haskell
au FileType haskell set et sw=4 ts=4

" terraform
autocmd FileType terraform setlocal et sw=2 ts=2
autocmd FileType terraform setlocal omnifunc=syntaxcomplete#Complete
autocmd BufWritePre *.tf call terraform#fmt()

"python
let g:python_host_prog = '/home/thinktainer/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/thinktainer/.pyenv/versions/neovim3/bin/python3'
let g:deoplete#sources#jedi#show_docstring = 1
let NERDTreeIgnore += ['\.pyc$']
let g:syntastic_python_checkers = ["pep8"]

" go
let g:go_snippet_engine = "neosnippet"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory = "$XDG_CONFIG_HOME/nvim/snippets"

" yaml
au FileType yaml set shiftwidth=2