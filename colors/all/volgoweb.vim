" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 May 21

" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=dark
" set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name ="volgoweb"

hi Normal ctermfg=grey ctermbg=black guifg=White guibg=NONE
" hi Normal ctermbg=Black ctermfg=LightGrey guifg=grey guibg=NONE

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=reverse ctermbg=DarkGreen gui=bold
hi StatusLine term=reverse ctermfg=LightGrey ctermbg=White gui=reverse,bold
hi StatusLineNC term=reverse ctermfg=LightGrey ctermbg=White gui=reverse
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse ctermbg=DarkRed gui=reverse guifg=Grey guibg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=Grey guifg=Blue
hi LineNr term=underline ctermfg=Brown guifg=Brown
hi MoreMsg term=bold ctermfg=Cyan gui=bold guifg=SeaGreen
hi NonText term=bold ctermfg=Blue gui=bold guifg=Blue guibg=grey80
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Search term=reverse ctermbg=DarkBlue ctermfg=NONE guibg=NONE guifg=NONE
hi SpecialKey term=bold ctermfg=Blue guifg=Blue
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=grey guibg=Yellow guifg=grey
hi Folded term=standout ctermbg=DarkGrey ctermfg=White guibg=Grey guifg=Green
hi FoldColumn term=standout ctermbg=Grey ctermfg=Blue guibg=Grey guifg=Blue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

" Colors for syntax highlighting
hi Constant term=underline ctermfg=DarkRed guifg=DarkRed guibg=NONE
hi Special term=bold ctermfg=DarkMagenta guifg=DarkMagenta guibg=NONE
hi Include term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi cInclude term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi PerlStatement term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi PerlConditional term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi PerlOperator term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi PerlRepeat term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi PerlVarPlain term=bold ctermfg=grey guifg=grey guibg=NONE
hi PerlFunctionName term=bold ctermfg=Blue guifg=Blue guibg=NONE
hi PerlString term=bold ctermfg=Blue guifg=Blue guibg=NONE
hi PerlComment term=bold ctermfg=DarkCyan guifg=DarkCyan guibg=NONE
hi PerlNumber term=bold ctermfg=DarkGreen guifg=DarkGreen guibg=NONE
hi PerlPOD term=bold ctermfg=DarkYellow guifg=DarkYellow guibg=NONE
hi PerlBlockCurly term=bold ctermfg=DarkYellow guifg=DarkYellow guibg=NONE
hi PerlTodo term=bold ctermfg=White ctermbg=LightRed guifg=White guibg=LightRed

hi htmlTagName term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi htmlValue term=bold ctermfg=DarkGreen guifg=DarkGreen guibg=NONE
hi htmlString term=bold ctermfg=Blue guifg=Blue guibg=NONE
hi TemplateToolkitDirective term=bold ctermfg=DarkRed guifg=Red guibg=NONE


hi phpIdentifier ctermfg=green guifg=green guibg=NONE
hi phpIdentifierSimply ctermfg=green guifg=green guibg=NONE
hi phpParent ctermfg=grey guifg=grey guibg=NONE
hi phpVarSelector ctermfg=green guifg=green guibg=NONE
hi phpMemberSelector ctermfg=grey guifg=grey guibg=NONE
hi phpOperator ctermfg=DarkMagenta guifg=DarkMagenta guibg=NONE
hi phpRelation ctermfg=grey guifg=grey guibg=NONE
hi phpStringSingle ctermfg=Yellow  guifg=Yellow guibg=NONE
hi phpStringDouble ctermfg=Yellow  guifg=Yellow guibg=NONE
hi phpNumber ctermfg=blue guifg=blue guibg=NONE
hi phpFunctions ctermfg=grey guifg=grey guibg=NONE
hi phpFunction ctermfg=grey guifg=grey guibg=NONE
hi phpKeyword ctermfg=Yellow guifg=Yellow guibg=NONE
hi phpDefine ctermfg=Blue guifg=Blue guibg=NONE
hi phpConditional ctermfg=blue guifg=blue guibg=NONE
hi phpRepeat ctermfg=blue guifg=blue guibg=NONE
hi phpLabel ctermfg=Yellow guifg=Yellow guibg=NONE
hi phpStatement ctermfg=Yellow guifg=Yellow guibg=NONE
hi phpType ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi htmlArg ctermfg=DarkGreen guifg=DarkGreen guibg=NONE
hi phpComment ctermfg=Red guifg=Red guibg=NONE
hi Tag ctermfg=DarkCyan guifg=DarkCyan guibg=NONE
 syn keyword phpOldStyleBlockStarter "\<\?php"
hi Special ctermfg=DarkCyan guifg=DarkCyan guibg=NONE

hi htmlComment term=bold ctermfg=DarkYellow guifg=DarkCyan guibg=NONE
hi htmlCommentPart term=bold ctermfg=DarkYellow guifg=DarkCyan guibg=NONE


hi cssTagName term=bold ctermfg=LightBlue guifg=Blue guibg=NONE
hi cssIdentifier term=bold ctermfg=LightBlue guifg=Blue guibg=NONE
hi cssSelectorOp term=bold ctermfg=LightBlue guifg=Blue guibg=NONE
hi cssSelectorOp2 term=bold ctermfg=LightBlue guifg=Blue guibg=NONE
hi cssClassName term=bold ctermfg=LightBlue guifg=Blue guibg=NONE
hi cssRenderProp term=bold ctermfg=grey guifg=grey guibg=NONE
hi cssBoxProp term=bold ctermfg=grey guifg=grey guibg=NONE
hi cssColorProp term=bold ctermfg=grey guifg=grey guibg=NONE
hi cssComment term=bold ctermfg=DarkCyan guifg=DarkCyan guibg=NONE
hi cssFunctionName term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE
hi cssFunction term=bold ctermfg=DarkGreen guifg=LightGrey guibg=NONE
hi cssValueInteger term=bold ctermfg=DarkGreen guifg=LightGrey guibg=NONE
hi cssValueNumber term=bold ctermfg=DarkGreen guifg=LightGrey guibg=NONE
hi cssValueLength term=bold ctermfg=DarkGreen guifg=LightGrey guibg=NONE
hi cssColor term=bold ctermfg=DarkGreen guifg=LightGrey guibg=NONE
hi cssBraces term=bold ctermfg=LightGrey guifg=LightGrey guibg=NONE

if &t_Co > 8
  hi Statement term=bold cterm=bold ctermfg=Brown gui=bold guifg=Brown
endif
hi Ignore ctermfg=LightGrey guifg=grey90

" au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" vim: sw=2
