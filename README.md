# Usage
Clone and add vim-gfortran-compiler to vim's runtimepath or using Vundle
Set default compiler based on FileType

```vim
filetype off
set rtp+=~/.vim/bundle/vim-gfortran-compiler
filetype plugin indent on
au FileType *.f90 compiler gfortran_make
```
```vim
Bundle 'linktohack/vim-gfortran-compiler'
au FileType *.f90 compiler gfortran_make
```
