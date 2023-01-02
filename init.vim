" https://stackoverflow.com/questions/27578758/vim-macro-with-backspace
" https://vi.stackexchange.com/questions/9706/what-is-the-difference-between-single-and-double-quoted-strings
" Those <80>kb are the internal key code for backspace. Replace each with \<BS> (and write ^M as \<CR>), and put the entire macro string in double quotes, and you should be good to go
let @j="0f`lvt`\"qy:!open_recording_at \"\" \<C-R>q\<CR>"
let @o="0f`lvt`\"qy:!open_recording_at %:p \<C-R>q\<CR>"
let @s="gg0jlllllv$hhhhhyj$hhhhgfggj$a \<ESC>pF \<ESC>hlv0llllllllllllllllllllld\<C-O>\<C-O>"
let @g=":!save_linenr_to_clipboard %\<CR>:\<C-R>+\<CR>"
let @i=":cd %:p:h\<CR>:!insert_new_images %\<CR>:e \<C-R>%\<Left>\<Left>\<Left>i\<CR>"
let @t=":!set_as_timestamps_file %:p\<CR>:e\<CR>G"
" let @c=":!create_files_for_timestamps_and_chapters \<C-R>%\<CR>:cfile \<C-R>%\<BS>\<BS>timestamps\<CR>:copen\<CR>"
let @c=":!create_files_for_timestamps_and_chapters \<C-R>%\<CR>:cfile /tmp/timestamps\<CR>:copen\<CR>"
" let @l=":cfile \<C-R>%\<BS>\<BS>timestamps\<CR>:copen\<CR>"
let @l=":cfile /tmp/timestamps\<CR>:copen\<CR>"
let @f="\<C-W>j0/;\<CR>:noh\<CR>lviw\"qy\<C-W>k:\<C-R>q\<CR>$a "

autocmd FileType markdown nnoremap <tab> /^- ![<CR>:noh<CR>
autocmd FileType markdown nnoremap <S-tab> ?^- ![<CR>:noh<CR>
# Alacritty:
# keybindings:
# - { key: Tab, mods: Shift, chars: "[Z" }
