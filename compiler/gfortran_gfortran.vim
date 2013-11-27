" Compiler: GNU Fortran Compiler with GNU Make
" Maintainer: LE Quang Linh<linktohack@gmail.com>
" Version: 0.0.1
" Last Change: 10 July 2013
" Homepage: http://github.com/linktohack/vim-gfortran-compiler
" License: Same as Vim

if exists('current_compiler')
    finish
endif

let current_compiler = 'gfortran_make'

if exists(":CompilerSet") != 2    " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=
            \%-Ggfortran%.%#,
            \%-Gmake%.%#,
            \%-Grm\ %.%#,
            \%A%f:%l.%c:,
            \%A%f:%l:,
            \%C,
            \%C%p%*[0123456789^],
            \%Z%trror:\ %m,
            \%Z%tarning:\ %m,
            \%C%.%#,
            \%trror:\ %m\ '%f'

CompilerSet makeprg=gfortran %
