let @o='$0f`lvt`"ty:!open_recording_at %:p t\qr'
let @g='$:!save_linenr_to_clipboard %:+\qr'
let @i='$:!insert_new_images %:e %€kl€kl€kli\qr'

autocmd FileType markdown nnoremap <tab> /^- ![<CR>:noh<CR>
autocmd FileType markdown nnoremap <S-tab> ?^- ![<CR>:noh<CR>
# Alacritty:
# keybindings:
# - { key: Tab, mods: Shift, chars: "[Z" }
