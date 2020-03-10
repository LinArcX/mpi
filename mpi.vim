set cpoptions&vim
scriptencoding utf-8

let s:save_cpo = &cpoptions
let g:mpi#default = ''
let g:mpi#extensions = {
      \ 'styl'         : '',
      \ 'sass'         : '',
      \ 'scss'         : '',
      \ 'htm'          : '',
      \ 'html'         : '',
      \ 'slim'         : '',
      \ 'ejs'          : '',
      \ 'css'          : '',
      \ 'less'         : '',
      \ 'md'           : '',
      \ 'markdown'     : '',
      \ 'rmd'          : '',
      \ 'json'         : '',
      \ 'js'           : '',
      \ 'jsx'          : '',
      \ 'rb'           : '',
      \ 'php'          : '',
      \ 'py'           : '',
      \ 'pyc'          : '',
      \ 'pyo'          : '',
      \ 'pyd'          : '',
      \ 'coffee'       : '',
      \ 'mustache'     : '',
      \ 'hbs'          : '',
      \ 'conf'         : '',
      \ 'ini'          : '',
      \ 'yml'          : '',
      \ 'yaml'         : '',
      \ 'toml'         : '',
      \ 'bat'          : '',
      \ 'jpg'          : '',
      \ 'jpeg'         : '',
      \ 'bmp'          : '',
      \ 'png'          : '',
      \ 'gif'          : '',
      \ 'ico'          : '',
      \ 'twig'         : '',
      \ 'cpp'          : '',
      \ 'c++'          : '',
      \ 'cxx'          : '',
      \ 'cc'           : '',
      \ 'cp'           : '',
      \ 'c'            : '',
      \ 'h'            : '',
      \ 'hpp'          : '',
      \ 'hxx'          : '',
      \ 'hs'           : '',
      \ 'lhs'          : '',
      \ 'lua'          : '',
      \ 'java'         : '',
      \ 'sh'           : '',
      \ 'fish'         : '',
      \ 'bash'         : '',
      \ 'zsh'          : '',
      \ 'ksh'          : '',
      \ 'csh'          : '',
      \ 'awk'          : '',
      \ 'ps1'          : '',
      \ 'ml'           : 'λ',
      \ 'mli'          : 'λ',
      \ 'diff'         : '',
      \ 'db'           : '',
      \ 'sql'          : '',
      \ 'dump'         : '',
      \ 'clj'          : '',
      \ 'cljc'         : '',
      \ 'cljs'         : '',
      \ 'edn'          : '',
      \ 'scala'        : '',
      \ 'go'           : '',
      \ 'dart'         : '',
      \ 'xul'          : '',
      \ 'sln'          : '',
      \ 'suo'          : '',
      \ 'pl'           : '',
      \ 'pm'           : '',
      \ 't'            : '',
      \ 'rss'          : '',
      \ 'f#'           : '',
      \ 'fsscript'     : '',
      \ 'fsx'          : '',
      \ 'fs'           : '',
      \ 'fsi'          : '',
      \ 'rs'           : '',
      \ 'rlib'         : '',
      \ 'rmeta'        : '',
      \ 'd'            : '',
      \ 'erl'          : '',
      \ 'hrl'          : '',
      \ 'ex'           : '',
      \ 'exs'          : '',
      \ 'eex'          : '',
      \ 'vim'          : '',
      \ 'vimrc'        : '',
      \ 'ai'           : '',
      \ 'psd'          : '',
      \ 'psb'          : '',
      \ 'ts'           : '',
      \ 'tsx'          : '',
      \ 'jl'           : '',
      \ 'pp'           : '',
      \ 'vue'          : '﵂',
      \ 'swift'        : '',
      \ 'xcplayground' : '',
      \ 'lock'         : '',
      \ 'bin'          : '',
      \ 'timestamp'    : '﨟',
      \ 'txt'          : '',
      \ 'log'          : '',
      \ 'plist'        : '况',
      \ 'dylib'        : '',
      \ 'so'           : '',
      \ 'gz'           : '',
      \ 'zip'          : '',
      \}

let g:mpi#exact_matches = {
      \ '.ds_store'                        : '',
      \ '.gitconfig'                       : '',
      \ '.gitignore'                       : '',
      \ '.zshenv'                          : '',
      \ '.vimrc'                           : '',
      \ '.bashprofile'                     : '',
      \ '.profile'                         : '',
      \ '.bashrc'                          : '',
      \ 'favicon.ico'                      : '',
      \ 'LICENSE'                          : '',
      \ 'node_modules'                     : '',
      \ 'dockerfile'                       : '',
      \ 'docker-compose.yml'               : '',
      \}

function! s:icon_for(k) abort
  return get(g:mpi#extensions, a:k, g:mpi#default)
endfunction

function! mpi#for(bufname) abort
    let ext = fnamemodify(expand(a:bufname), ':e')
    if empty(ext)
        let l:has_key = has_key(g:mpi#exact_matches, a:bufname)
        if l:has_key
            return get(g:mpi#exact_matches, a:bufname, g:mpi#default)
        else
            let ft = getbufvar(a:bufname, '&ft')
            if empty(ft)
                return g:mpi#default
            else
                return s:icon_for(ft)
            endif
        endif
    else
        return s:icon_for(ext)
    endif
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
