scriptencoding utf-8

function! s:test_local()
	let owl_SID = owl#filename_to_SID("vim-hideout/autoload/hideout.vim")
	
 	OwlCheck s:unicode_range("a", "c") == [char2nr("a"), char2nr("b"), char2nr("c") ]
 	OwlCheck s:unicode_range("あ", "い") == [12354, 12355, 12356]
 	OwlCheck s:unicode_range(char2nr("a"),  char2nr("c")) == [char2nr("a"), char2nr("b"), char2nr("c") ]
endfunction

function! s:test_test()
	OwlCheck hideout#char2unicode("あ") == "あ"
	OwlCheck hideout#char2unicode_nr("あ") == 0x3042
	OwlCheck hideout#unicode_nr2char(0x3042) == "あ"
	OwlCheck hideout#unicode_escape("あ") == '\u3042'

endfunction

function! s:owl_begin()
" 	let tmp = owl_SID
" 	let owl_SID = owl#filename_to_SID("vim-hideout/autoload/hideout.vim")
" 	let g:owl_success_message_format = "%f:%l:[Success] %e"
endfunction

function! s:owl_end()
" 	let g:owl_success_message_format = ""
endfunction


