" ---------------------------------------------------------------------------------
" 0. Basic configs
" ---------------------------------------------------------------------------------

" Comments in Vimscript start with a `"`.

" Vi-compatibility
" DESCRIPTION: Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. Included here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Syntax highlighting
" DESCRIPTION: Turn on syntax highlighting.
syntax on

" Vim startup message
" DESCRIPTION: Disable the default Vim startup message.
set shortmess-=I

" ---------------------------------------------------------------------------------
" 1. Line counter configs
" ---------------------------------------------------------------------------------

" 1.1 Show line numbers.
set nu

" 1.2 Show relative line numbers.
" DESCRIPTIOIN: This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set rnu

" ---------------------------------------------------------------------------------
" 2 Status line configs
" ---------------------------------------------------------------------------------

" 2.1 Visibility
" DESCRIPTION: Always show the status line at the bottom, even if you only have one window open.
" 0 - hides the status line completely
" 1 - shows the status line only if there are multiple windows (split windows) open
" 2 - makes the status line always visible
" 3 - shows a single status line across the entier Vim i-face, even with multiple windows open
set laststatus=2

" 2.2 Backspace behaviour
" DESCRIPTION: The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" ---------------------------------------------------------------------------------
" 3 Buffer configs
" ---------------------------------------------------------------------------------

" 3.1 Allow buffer switch
" DESCRIPTION: By default, Vim doesn't allow hiding a buffer (i.e. switching to another 
" buffer that is shown in any window) that has unsaved changes to prevent from 
" forgetting about unsaved changes and then quitting e.g. via `:qa!`
set hidden

" ---------------------------------------------------------------------------------
" 3. Search configs
" ---------------------------------------------------------------------------------

" 3.1 Case-insensitive search
" DESCRIPTION: This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase

" 3.2 Smart case search
set smartcase

" 3.3 Incremental search 
" DESCRIPTION:  Enable searching as you type, rather than waiting till you press enter.
set incsearch

" 3.4 Highligh search match
set hls

" ---------------------------------------------------------------------------------
" 4. Binding/unbinding configs
" ---------------------------------------------------------------------------------
" DESCRIPTION: Unbind useless/annoying default key bindings.

" 4.1 Unbind `Q` as `Q` in normal mode enters Ex mode. 
nmap Q <Nop> 

" ---------------------------------------------------------------------------------
" 5. Environment configs
" ---------------------------------------------------------------------------------

" 5.1 Audio configs

" 5.1.1 Disable audible bell on error(s)
set noerrorbells visualbell t_vb=

" 5.2 Directory configs

" 5.2.1 Auto change dir
" DESCRIPTION: Automatically set the CD (current directory) to be the directory of the last opened file
set autochdir

" ---------------------------------------------------------------------------------
" 6. Mouse configs
" ---------------------------------------------------------------------------------

" 6.1 Enable mouse support
set mouse+=a

" ---------------------------------------------------------------------------------
" 7. Environment hints/alerts for proper Vim usage
" ---------------------------------------------------------------------------------

" 7.1 Left arrow key alert (Normal mode)
nnoremap <Left>  :echoe "Use h instead of the left arrow key"<CR>

" 7.2 Right arrow key alert (Normal mode)
nnoremap <Right> :echoe "Use l instead of the right arrow key"<CR>

" 7.3 Up arrow key alert (Normal mode)
nnoremap <Up>    :echoe "Use k instead of the up arrow key"<CR>

" 7.4 Down arrow key alert (Normal mode)
nnoremap <Down>  :echoe "Use j instead of the down arrow key"<CR>

" 7.5 Left arrow key alert (Insert mode)
inoremap <Left>  <ESC>:echoe "Use h instead of instead of the left arrow key"<CR>

" 7.6 Right arrow key alert (Insert mode)
inoremap <Right> <ESC>:echoe "Use l instead of the right arrow key"<CR>

" 7.7 Up arrow key alert (Insert mode)
inoremap <Up>    <ESC>:echoe "Use k instead of the up arrow key"<CR>

" 7.8 Down arrow key alert (Insert mode)
inoremap <Down>  <ESC>:echoe "Use j instead of the down arrow key"<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

