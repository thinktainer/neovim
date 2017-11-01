"dein Scripts-----------------------------
" Required:
set runtimepath^=/home/thinktainer/.config/nvim/plugins/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('/home/thinktainer/.config/nvim/plugins/dein.vim'))
	call dein#begin(expand('/home/thinktainer/.config/nvim/plugins/dein.vim'))

	" Let dein manage dein
	" Required:
	call dein#add('Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('/home/thinktainer/.config/nvim/plugins/dein.vim/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#add('fsharp/vim-fsharp', {'build': 'make'})
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Townk/vim-autoclose.git')
	call dein#add('chriskempson/base16-vim.git')
	"call dein#add('elixir-lang/vim-elixir.git')
	call dein#add('tpope/vim-fugitive.git')
	call dein#add('tpope/vim-rhubarb.git')
	call dein#add('mattn/gist-vim.git', {'depends': 'mattn/webapi-vim'})
	call dein#add('mattn/webapi-vim')
	"call dein#add('guns/vim-clojure-highlight')
	"call dein#add('guns/vim-clojure-static')
	"call dein#add('guns/vim-sexp')
	"call dein#add('tpope/vim-leiningen')
	"call dein#add('tpope/vim-sexp-mappings-for-regular-people')
	"call dein#add('SevereOverfl0w/async-clj-omni')
	call dein#add('scrooloose/nerdcommenter.git')
	"call dein#add('saltstack/salt-vim.git')
	call dein#add('scrooloose/syntastic.git')
	call dein#add('godlygeek/tabular.git')
	call dein#add('pivotal/tmux-config.git')
	call dein#add('edkolev/tmuxline.vim.git')
	"call dein#add('sjl/tslime.vim.git')
	call dein#add('bling/vim-airline.git')
	call dein#add('vim-airline/vim-airline-themes')
	"call dein#add('tpope/vim-bundler.git')
	"call dein#add('tpope/vim-cucumber.git')
	"call dein#add('tpope/vim-dispatch.git')
	"call dein#add('tpope/vim-fireplace.git')
	"call dein#add('facebook/vim-flow.git')
	"call dein#add('pangloss/vim-javascript.git')
	"call dein#add('mxw/vim-jsx.git')
	"call dein#add('lepture/vim-jinja.git')
	"call dein#add('elzr/vim-json.git')
	call dein#add('tpope/vim-characterize.git')
	"call dein#add('tpope/vim-leiningen.git')
	"call dein#add('tpope/vim-markdown.git')
	"call dein#add('tpope/vim-projectionist.git')
	"call dein#add('rodjek/vim-puppet.git')
	"call dein#add('tpope/vim-ragtag.git')
	"call dein#add('tpope/vim-rails.git')
	"call dein#add('tpope/vim-rbenv.git')
	"call dein#add('vim-ruby/vim-ruby.git')
	call dein#add('tpope/vim-surround.git')
	call dein#add('tpope/vim-unimpaired.git')
	"call dein#add('jimenezrick/vimerl')
	call dein#add('Quramy/vison.git')
	call dein#config('vison.vim', {
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('hashivim/vim-terraform')
	call dein#add('Shougo/unite.vim.git')
	"call dein#add('elmcast/elm-vim')
	"call dein#add('slim-template/vim-slim.git')
	"call dein#add('KabbAmine/zeavim.vim')
	call dein#add('scrooloose/nerdtree.git')
	call dein#add('zchee/deoplete-go', { 'build': 'make' })
	call dein#add('majutsushi/tagbar')
	call dein#add('fatih/vim-go', {'rev': 'v1.12'})
	call dein#config('go.vim', {
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\})
	call dein#add('zchee/deoplete-jedi')
	call dein#config('jedi-deoplete.vim', {
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('davidhalter/jedi-vim')
	call dein#config('jedi-vim.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('lambdalisue/vim-pyenv', {'merged': 0})
	call dein#add('carlitux/deoplete-ternjs', {'build': 'npm i -g tern'})
	call dein#config('deoplete-ternjs.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('ternjs/tern_for_vim', {'build': 'npm install'})
	call dein#config('tern_for_vim.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	"call dein#add('Omnisharp/omnisharp-vim', {'build': 'sh -c "cd server && xbuild"'})
	call dein#add('rust-lang/rust.vim')
	call dein#config('rust.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('racer-rust/vim-racer')
	call dein#config('vim-racer.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('sebastianmarkow/deoplete-rust')
	call dein#config('deoplete-rust.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })
	call dein#add('uarun/vim-protobuf')
	call dein#config('vim-protobuf.vim', { 
				\ 'lazy': 1, 'on_event': 'InsertEnter',
				\ })


	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

set mouse=a

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

let g:dein#enable_notification=1

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
"let g:tern#command = [$HOME."/.ndenv/versions/v4.4.7/bin/tern"]
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
let g:airline_theme='laederon'

"editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

"tslime
let g:tslime_ensure_trailing_newlines=1

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif


"unite
call unite#custom#source(
        \ 'file,file/new,buffer,file_rec,file_rec/neovim',
        \ 'matchers', 'matcher_fuzzy')
call unite#custom#source('file/rec_neovim,file_rec,file_rec/async', 'ignore_pattern', 'node_modules/')

if executable('rg')
	let g:unite_source_grep_command = 'rg'
	let g:unite_source_grep_default_opts = '--hidden --no-heading --vimgrep -S --glob !.git/ --glob !.svn/ --glob !.bzr/'
	let g:unite_source_grep_recursive_opt = ''
elseif executable('ag')
	" Use ag (the silver searcher)
	" https://github.com/ggreer/the_silver_searcher
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts =
	\ '-i --vimgrep --hidden --ignore ' .
	\ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
	let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
    " Use ack
    " http://beyondgrep.com/
    let g:unite_source_grep_command = 'ack'
    let g:unite_source_grep_default_opts =
                \ '-i --no-heading --no-color -H'
    let g:unite_source_grep_recursive_opt = ''
endif

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


" F#, fsharp
augroup fsharp
    au!
    autocmd FileType fsharp set et ts=4 sw=4
    autocmd FileType fsharp nnoremap <buffer> <leader>r :FsiEvalBuffer<Enter>
    autocmd FileType fsharp nnoremap <buffer> <leader><space> :FsiShow<Enter>
    autocmd FileType fsharp nnoremap <buffer> <leader>c :FsiClear<Enter>
augroup END

let g:syntastic_fsharp_checkers = ['syntax']
let g:fsharpbinding_debug = 0
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
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>m <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gr <Plug>(go-rename)
au FileType go nmap <Leader>l <Plug>(go-metalinter)
au FileType go nmap <Leader>ct <Plug>(go-test-compile)
au FileType go setlocal ts=8 sw=8 noet nolist
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_term_enabled = 1
let g:go_term_mode = "split"
"let g:go_metalinter_command = "gometalinter.v1"
let g:go_metalinter_enabled = ['vet', 'vetshadow', 'deadcode', 'varcheck', 'structcheck', 'errcheck', 'golint', 'ineffassign', 'goconst', 'gofmt', 'safesql']

let g:deoplete#sources#go#gocode_binary = "~/code/go/bin/gocode"

" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory = "~/.config/nvim/snippets"

" yaml
au FileType yaml set shiftwidth=2

" gist
let g:gist_get_multiplefile = 1

" csharp
au FileType cs set shiftwidth=4 tabstop=4 expandtab

" match parentheses
let loaded_matchparen = 1

vnoremap <Leader>64e c <c-r>=system('base64 -w0', @")<cr><esc>
vnoremap <Leader>64d c <c-r>=system('base64 --decode', @")<cr><esc>

" Rust
let g:deoplete#sources#rust#racer_binary='/home/thinktainer/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/thinktainer/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:syntastic_rust_checkers=['rustc']

autocmd BufNewFile,BufRead,BufEnter *.jcl,*PP@.[tT][xX][tT],*[jJ][cC]@.[tT][xX][tT] setl ft=jcl
