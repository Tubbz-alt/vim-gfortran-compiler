# Usage
Clone and add vim-gfortran-compiler to vim's runtimepath or using Vundle.
Set default compiler based on FileType.

```vim
filetype off
set rtp+=~/.vim/bundle/vim-gfortran-compiler
filetype plugin indent on
au FileType fortran compiler gfortran_make
```
```vim
Bundle 'linktohack/vim-gfortran-compiler'
au FileType fortran compiler gfortran_make
```
It should be better to create a simple Makefile instead manually compile the
program for it's simplicity and flexibility. Nonetheless if you don't have
one, just modify the autocmd comamnd to:

```vim
au FileType fortran compiler gfortran_single
```

Of course, the compiler can be enable at any time by issue the compiler
command:
```vim
compiler gfortran_make
```
or
```vim
compiler gfortran_single
```

 vim:sw=4 ts=4 et sta cin spell tw=78:
