" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Add optional packages.
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Incremental Search
set is

" Set hybrid number line
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Colors

hi Comment ctermfg=246
hi LineNr ctermfg=039
hi CursorLineNr ctermfg=039
hi Contant ctermfg=196
hi Statement ctermfg=202
hi Special ctermfg=093
hi PreProc ctermfg=093
hi Identifier ctermfg=039
