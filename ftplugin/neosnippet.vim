"=============================================================================
" FILE: snippets.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu at gmail.com>
" License: MIT license
"=============================================================================

if !exists('b:undo_ftplugin')
    let b:undo_ftplugin = ''
else
    let b:undo_ftplugin = '|'
endif

if !&l:expandtab
    setlocal expandtab
    let &l:shiftwidth=&tabstop
    let &l:softtabstop=&tabstop
else
    let &l:softtabstop=&shiftwidth
endif

let &l:commentstring="#%s"

let b:undo_ftplugin .= '
    \ setlocal expandtab< shiftwidth< softtabstop< tabstop< commentstring<
    \'
