" Vim compiler file
" Compiler:     FPC 2.1
" Maintainer:   Jaroslaw Blasiok <jaro3000@o2.pl>
" Last Change:  2005 October 07

if exists("current_compiler")
  finish
endif
let current_compiler = "fpc"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" NOTE: compiler must be runned with -vb to write whole source path, not only file
" name.
CompilerSet makeprg=fpc\ -v0\ -vb\ -l-\ %
CompilerSet errorformat=%f(%l\\,%c)\ %m
