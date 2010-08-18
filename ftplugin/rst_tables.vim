"
" reStructuredText tables plugin
" Language:     Python (ft=python)
" Maintainer:   Vincent Driessen <vincent@datafox.nl>
" Version:      Vim 7 (may work with lower Vim versions, but not tested)
" URL:          http://github.com/nvie/vim-rst-tables
"

" Only do this when not done yet for this buffer
if exists("g:loaded_rst_tables_ftplugin")
    finish
endif
let loaded_rst_tables_ftplugin = 1

python << endpython
import vim
import os
import os.path
from vim_bridge import bridged



endpython

" Add mappings, unless the user didn't want this.
" The default mapping is registered, unless the user remapped it already.
if !exists("no_plugin_maps") && !exists("no_rst_table_maps")
    if !hasmapto('CreateTable(')
        noremap <silent> <leader><leader>c :call CreateTable()<CR>
    endif
    if !hasmapto('ReformatTable(')
        noremap <silent> <leader><leader>f :call ReformatTable()<CR>
    endif
endif
