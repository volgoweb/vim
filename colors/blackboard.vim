" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "blackboard"

hi Normal		guifg=#ffffff guibg=#222222 

hi Comment	    guifg=#aeaeae gui=italic 
hi Constant	    guifg=#ff8b00 gui=none
hi String       guifg=#fbec5d gui=none
hi Statement    guifg=#ff0460 gui=none gui=bold 
hi Entity       guifg=#90ee44 gui=none
hi Support      guifg=#8fa6cd gui=none
hi LineNr       guifg=#aeaeae guibg=#222222 gui=none 
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi NonText 		guifg=#808080 guibg=#222222	gui=none

hi pythonParamName guifg=#73f2f2 gui=italic
hi pythonFuncParams  guifg=#73f2f2 gui=italic
hi pythonParam guifg=#73f2f2 gui=italic

hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
" hi Search ctermfg=186 ctermbg=NONE cterm=underline guifg=#FFE800 guibg=#014576 gui=underline
hi Search ctermfg=186 ctermbg=NONE cterm=underline guifg=#000000 guibg=#BDAC00 gui=underline
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold

hi Visual       guibg=#595959
hi VertSplit    guifg=#444444 guibg=#444444
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none


hi link Define          Entity
hi link Function        Entity

hi link Structure       Support
hi link Special         Support
hi link Test            Support

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi link Conditional     Statement
hi link StorageClass    Statement
hi link Operator        Statement
hi link Statement       Statement


hi pythonClass   	    guifg=#ff0460 guibg=#424242 gui=bold 
hi pythonClassDef	    guifg=#ff0460 guibg=#424242 gui=bold 
hi pythonClassName	  guifg=#90ee44 guibg=#424242 gui=bold 
hi pythonSuperclasses guifg=#90ee44 guibg=#424242 gui=bold 
hi pythonSuperclass   guifg=#90ee44 guibg=#424242 gui=bold 


hi pythonFunc               guifg=#90ee44 guibg=#2E2E2E gui=bold 
hi pythonFuncDef            guifg=#ff0460 guibg=#2E2E2E gui=bold 
hi pythonFuncName           guifg=#90ee44 guibg=#2E2E2E gui=bold 
hi pythonFuncParams         guifg=#90ee44 guibg=#2E2E2E gui=bold 
hi pythonParam              guifg=#90ee44 guibg=#2E2E2E gui=bold 
hi pythonParamName          guifg=#90ee44 guibg=#2E2E2E gui=bold 
hi pythonDefaultAssignment  guifg=#90ee44 guibg=#2E2E2E gui=bold 

