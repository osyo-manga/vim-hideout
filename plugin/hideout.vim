scriptencoding utf-8
if exists('g:loaded_hideout')
  finish
endif
let g:loaded_hideout = 1

let s:save_cpo = &cpo
set cpo&vim


let g:hideout_syntax_name = get(g:, "hideout_syntax_name", "hideout_unicode_escape")
let g:hideout_unicode_escape_format = get(g:, "hideout_unicode_escape_format", '\u%04X')
let g:hideout_unicode_user_text = get(g:, "hideout_unicode_user_text", "")
let g:hideout_kanzi_disable = get(g:, "hideout_kanzi_disable", 0)


command! -bang HideoutOn
\	call hideout#on()
\|	if <bang>1 | setlocal conceallevel=2 | endif


command! HideoutClear
\	call hideout#clear()


command! HideoutRefreshCache
\	call hideout#refresh_cache()


let &cpo = s:save_cpo
unlet s:save_cpo
