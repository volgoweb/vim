" Мои настройки (volgoweb)
" display settings
" Yule
" colorscheme  liquidcarbon  " enable for dark terminals
" colorscheme  zellner  " enable for dark terminals

" colorscheme  Monokai  " enable for dark terminals
" autocmd FileType python colorscheme  blackboard  " хорошая тема для python
colorscheme  blackboard  " enable for dark terminals
syntax enable

    " Pathogen
execute pathogen#infect()

set wrap                " переносить строку, если она не умещается по ширине
set linebreak						" Перенос строк по словам, а не по буквам
set scrolloff=2         " 2 lines above/below cursor when scrolling
set number              " show line numbers
set showmatch           " show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set wildmenu            " completion with menu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set noswapfile " Отключаем создание swap файлов
set dir=~/.vim/swap/ " Все swap файлы будут помещаться в заданную директорию (туда скидываются открытые буферы)
set laststatus=2        " use 2 lines for the status bar
set matchtime=2         " show matching bracket for 0.2 seconds
set t_Co=256 " использовать больше цветов в терминале
set wildmenu
" set list								" Включить подсветку невидимых символов
set pastetoggle=        " При вставке фрагмента сохраняет отступы
" set encoding=utf-8

" editor settings
set ignorecase          " case insensitive searching
if has("gui")
	    " set guioptions+=b  " нижняя полоса прокрутки
			set guioptions-=m  " -=m - убирает меню;
			set guioptions-=T  " -=T - убирает панель инструментов
			" set columns=80

			" set lines=50
			set guifont=LiberationMono\ 10
endif
set smartcase           " but become case sensitive if you type uppercase characters
set smartindent         " smart auto indenting
set autoindent
" set smarttab            " smart tab handling for indenting
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов
" set clipboard=unnamed " во избежание лишней путаницы использовать системный буфер обмена вместо буфера Vim
autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/", expand('<cword>'))

"ВКЛЮЧЕНИЕ АВТОДОПЛНЕНИЯ ВВОДА (omnifunct)
autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType tt2html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete
" Опции автодополнения - включаем только меню с доступными вариантами
" автодополнения (также, например, для omni completion может быть
" окно предварительного просмотра).
" set completeopt=menu

" установка php синтаксиса для файлов install, inc
autocmd BufNewFile,BufRead *.inc,*.install set filetype=php

"НАСТРОЙКИ ГОРЯЧИХ КЛАВИШ
" Ctrl+s - сохранить файл
noremap <C-s> :w<cr>
nmap <C-s> :w<cr>
" Заменить текущее слово
nmap <C-S-s> bce
" Сохранить сессию и выйти из всех вкладок и буферов
noremap <C-q> :mksession! ~/.last.vim<cr>:qa<cr>
nmap <C-q> :mksession! ~/.last.vim<cr>:qa<cr>
"" Переключение открытых буферов
map <C-left> :bp<cr>
nmap <C-left> :bp<cr>
map <C-right> :bn<cr>
nmap <C-right> :bn<cr>
map <C-h> :bp<cr>
nmap <C-h> :bp<cr>
map <C-l> :bn<cr>
nmap <C-l> :bn<cr>

"" Отменить-вернуть через Ctrl
" отмена действия
" noremap <C-Z> u
" inoremap <C-Z> <C-O>u
" вернуть отменённое назад
" noremap <C-Y> <C-R>
" inoremap <C-Y> <C-O><C-R>
" вызвать диалог открытия файла
" noremap <F2> :e .<cr>
"  убирать подсветку ранее найденного
" :nohls<cr>
nmap <A-S-right> :><cr>
imap <A-S-right> <Esc>:><cr>'.i
vmap <A-S-right> :><cr>
nmap <A-S-left> :<<cr>
imap <A-S-left> <Esc>:<<cr>'.i
vmap <A-S-left> :<<cr>

nmap <A-S-up> dd<Up><Up>p
nmap <A-S-down> ddp
imap <A-S-up> <Esc>dd<Up><Up>p
imap <A-S-down> <Esc>ddp

" Внешний буфер обмена
vmap <C-S-C> "+y
imap <C-S-V> <Esc>"+pa
" nmap <C-S-V> "+P

" Скопиовать текущей слово
nmap <C-S-c> bvey

"закрытие скобок
imap [[ []<LEFT>
" imap [] []
imap ((	()<LEFT>
imap {} {}<LEFT>
imap {{ {}<cr><cr><UP><TAB>
"закрытие кавычек
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
" по нажатию tab выделяет следующий текст в кавычках
nmap <tab>	/'<cr>nvi'
vmap <tab>	<esc>/'<cr>nvi'

nmap <C-k>	?(<cr>
nmap <C-j>	/)<cr>
vmap <C-k>	?(<cr>
vmap <C-j>	/)<cr>


nmap <F11> :MRU<cr>
imap <F11> :MRU<cr>

nmap <F4> :w<cr>
imap <F4> <esc>:w<cr>a

set fileformat=unix     " file mode is unix
"set fileformats=unix,dos    " only detect unix file format, displays that ^M with dos files

" system settings
set lazyredraw          " no redraws in macros
set confirm             " get a dialog when :q, :w, or :wq fails
set nobackup            " no backup~ files.
set viminfo='20,\"500   " remember copy registers after quitting in the .viminfo file -- 20 jump links, regs up to 500 lines'
set hidden              " Не выгружать буфер, когда переключаемся на другой файл
set history=50          " keep 50 lines of command history
set mouse=a             " use mouse in visual mode (not normal,insert,command,help mode
set autochdir           " при открытии списка файлов открывает сразу директорию текущего файла
cd /my/web_projects/source


" color settings (if terminal/gui supports it)
" if &t_Co > 2 || has("gui_running")
  syntax on          " enable colors
  set hlsearch       " highlight search (very useful!)
  set incsearch      " search incremently (search while typing)
" endif


map <F5> <Esc>:set filetype=htmldjango<Cr> 

" маппинг поиска 
" map <C-[> viwy<ESC>/<S-Insert><cr>

" NerdTREE map
" map <F3> :NERDTree<Cr><S-b>
map <F3> <Esc>:NERDTreeToggle<CR><S-b>
let NERDTreeMapOpenInTab='\r' 
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\.pyc$']

helptags ~/.vim/doc

" плагин snipMate для быстрой вставки шаблонов кода по нажатию tab
set nocompatible
filetype on
filetype plugin on


" Проверка синтаксиса PHP
set makeprg=php\ -l\ %

 " Формат вывода ошибок PHP
 set errorformat=%m\ in\ %f\ on\ line\ %l

filetype indent on


" Для работы цвета функций PHP
syn match    PhpFuncName     "function\s+\w+("

" set noexpandtab          " turn a tabs into spaces
set expandtab          " turn off a tabs into spaces
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set softtabstop=4
set synmaxcol=160  " максимальное кол-во символов выражения, которое ищется для автдополнения. Малое число помогает устранить тормоза

" .less to .css , lessc is required.
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>	

" Выравнивание строк по одному символу (например, присваивание множества переменных)
nmap <silent> [:  :call AlignAssignBySymbol(":")<CR>
nmap <silent> [#  :call AlignAssignBySymbol("#")<CR>
nmap <silent> [=  :call AlignAssignBySymbol("=")<CR>
fu! AlignAssignBySymbol(n)
    "Шаблоны, необходимые для нахождения операторов присваивания...
    let ASSIGN_OP   = '[-+*/%|&]\?'.a:n.'\@<!'.a:n.'['.a:n.'~]\@!'
    let ASSIGN_LINE = '^\(.\{-}\)\s*\(' . ASSIGN_OP . '\)'
        "Находим блок кода, с которым будем работать (непустые строки с одинаковым отступом)
    let indent_pat = '^' . matchstr(getline('.'), '^\s*') . '\S'
    let firstline  = search('^\%('. indent_pat . '\)\@!','bnW') + 1
    let lastline   = search('^\%('. indent_pat . '\)\@!', 'nW') - 1
    if lastline < 0
        let lastline = line('$')
    endif
        "Находим позицию в строке, по которой следует выравнивать операторы присваивания...
    let max_align_col = 0
    let max_op_width  = 0
    for linetext in getline(firstline, lastline)
        "В этой строке имеется оператор присваивания?
        let left_width = match(linetext, '\s*' . ASSIGN_OP)
            "Если оператор имеется, отслеживаем максимальные позицию в строке и
        "ширину оператора присваивания...
        if left_width >= 0
            let max_align_col = max([max_align_col, left_width])
                let op_width      = strlen(matchstr(linetext, ASSIGN_OP))
            let max_op_width  = max([max_op_width, op_width+1])
        endif
    endfor

    "Код, необходимый для переформатирования строк таким образом,
    "чтобы выровнять операторы присваивания...
    let FORMATTER = '\=printf("%-*s%*s", max_align_col, submatch(1),
    \                                   max_op_width,  submatch(2))'
        " Переформатируем строки с операторами присваивания...
    for linenum in range(firstline, lastline)
        let oldline = getline(linenum)
        let newline = substitute(oldline, ASSIGN_LINE, FORMATTER, "")
        call setline(linenum, newline)
    endfor
endf

" Русская раскладка
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

let python_highlight_all = 1
set foldcolumn=1

" Powerline
" let g:Powerline_symbols = 'fancy'
" set fillchars+=stl:\ ,stlnc:\


"------------------------------------ plugin Python-mode ------------------------------------
" Включаем библиотеку Rope
let g:pymode_rope = 1
let ropevim_vim_completion=1
set completeopt-=preview

" Включаем linting
let g:pymode_lint = 1

" Какие ошибки подсвечивать
" let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_checker = "0"

" Отключаем надоедливое окно, отображающее ошибки и предупреждения
let g:pymode_lint_cwindow = 0

" Включаем поддержку virtualenv
let g:pymode_virtualenv = 1

" Подсветка синтаксиса и ошибок
let g:pymode_lint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Отключаем фолдинг
"let g:pymode_folding = 0


" Загружаем плагин для вставки брейкпоинтов
let g:pymode_breakpoint = 1

" По leader + e будет устанавливаться брейкпоинт
let g:pymode_breakpoint_key = '<leader>e'

"------------------------------------ plugin jedi-vim ------------------------------------
" Disable choose first function/method at autocomplete
" let g:jedi#popup_select_first = 1
" let g:jedi#popup_on_dot = 1
" let g:jedi#completions_command = "<C-p>"
" let g:jedi#completions_enabled = 1

"------------------------------------ plugin tag-bar ------------------------------------
nmap <F8> :TagbarToggle<CR>

"----------------------------------- ctags ----------------------------------------------
set tags=./tags,tags;
"-----------------------------------------------------------------------------------------

" какой-то ручной фолдинг, благодаря которому тормозов при написании нет
set foldmethod=manual
