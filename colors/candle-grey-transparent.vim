" Name: candle-grey-transparent
" Author: Aditya Azad<adityaazad121@gmail.com>
" Maintainer: Aditya Azad<adityaazad121@gmail.com>
" Notes: A dark monochrome colorscheme with a hint of color

" Colors used
let g:colorscheme_strings_as_comments = 0
let s:gray = "a9a9a9"
let s:beige = "d4cdc6"
let s:dark_brown = "907f6d"
let s:white = "ffffff"
let s:yellow_gray = "414100"
let s:yellow_yellow = "ffffc5"
let s:medium_yellow = "ffec00"
let s:bright_yellow = "ffd700"
let s:light_gray = "cdcdcd"
let s:gray_blue = "c0c8cf"
let s:light_yellow = "fcfca9"

let s:gray_0 = "f7f8f9"
let s:gray_1 = "e8ebde"
let s:gray_2 = "c9cdd2"
let s:gray_3 = "9ea4aa"
let s:gray_4 = "72787f"
let s:gray_5 = "454c53"
let s:gray_6 = "26282b"
let s:gray_7 = "1b1d1f"
let s:gray_x = "898989"
let s:gray_b = "222222"
let s:gray_d = "3d3d3d"
let s:gray_y = "777777"
let s:gray_z = "999999"
let s:gray_q = "b8b8b8"
let s:gray_w = "9c9c9c"
let s:gray_exp = "ff6d7c"

let s:norm = s:white
let s:comments_bg = s:gray_d
let s:comments_fg = s:gray_1
" let s:comments_bg = s:dark_brown
" let s:comments_fg = s:beige
let s:search_bg = s:light_yellow
let s:search_fg = s:gray_6
let s:id_fg = s:gray_w
let s:type_fg = s:gray_w
let s:id_bg = "NONE"
let s:val_fg = s:gray_z
let s:val_bg = "NONE"
let s:sub_id = s:gray_2
let s:string_type = s:gray_z
let s:string_bg = "NONE"
let s:norm_type = s:light_gray
let s:fn_fg = s:gray_4
let s:fn_bg = "NONE"
let s:high_fg = s:gray_6
let s:high_bg = s:light_yellow

if g:colorscheme_strings_as_comments == 1
    let s:string_type = s:comment_fg
    let s:string_bg = s:comment_bg
endif

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="candle-grey-transparent"

" --------------------------------
" Editor settings
" --------------------------------
exec 'hi Normal          ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:norm . '    guibg=NONE    gui=NONE'
exec 'hi Cursor          ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:norm . '    guibg=#' . s:bright_yellow . '    gui=NONE'
exec 'hi LineNr guifg=#' . s:gray_w
exec 'hi CursorLineNR guifg=#' . s:bright_yellow
exec 'hi CursorLine ctermfg=White guibg=#' . s:yellow_gray

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=NONE         ctermbg=NONE    cterm=NONE    guifg=NONE       guibg=NONE    gui=NONE
hi FoldColumn      ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#ffd700    guibg=NONE    gui=NONE
hi SignColumn      ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#ffd700    guibg=NONE    gui=NONE
hi Folded          ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#ffd700    guibg=NONE    gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=DarkGrey        ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi ColorColumn     ctermfg=DarkGrey        ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi TabLine         ctermfg=DarkGrey        ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi TabLineFill     ctermfg=DarkGrey        ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE
hi TabLineSel      ctermfg=DarkGrey        ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE    gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
exec 'hi Directory       ctermfg=White        ctermbg=NONE     cterm=NONE    guifg=#' . s:beige . '    guibg=NONE       gui=NONE'
exec 'hi Search          ctermfg=White        ctermbg=210      cterm=NONE    guifg=#' . s:search_fg . '    guibg=#' . s:search_bg . '    gui=NONE'
exec 'hi IncSearch       ctermfg=White        ctermbg=210      cterm=NONE    guifg=#' . s:search_fg . '    guibg=#' . s:search_bg . '    gui=NONE'

" -----------------
" - Prompt/Status -
" -----------------
exec 'hi StatusLine      ctermfg=210          ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi StatusLineNC    ctermfg=Black        ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi WildMenu        ctermfg=210          ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi Question        ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi Title           ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi ModeMsg         ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi MoreMsg         ctermfg=210          ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'

" --------------
" - Visual aid -
" --------------
exec 'hi MatchParen      ctermfg=White          ctermbg=DarkGray     cterm=NONE    guifg=#' . s:medium_yellow . '    guibg=NONE    gui=NONE'
exec 'hi Visual          ctermfg=White        ctermbg=DarkGray     cterm=NONE    guifg=#' . s:high_fg . '    guibg=#' . s:high_bg . '    gui=NONE'
exec 'hi VisualNOS          ctermfg=White        ctermbg=DarkGray     cterm=NONE    guifg=#' . s:high_fg . '    guibg=#' . s:high_bg . '    gui=NONE'
exec 'hi NonText         ctermfg=DarkGray     ctermbg=NONE         cterm=NONE    guifg=NONE       guibg=NONE       gui=NONE'

exec 'hi Todo            ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:gray_1 . '    guibg=NONE    gui=NONE'
exec 'hi Underlined      ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:gray_1 . '    guibg=NONE    gui=NONE'
exec 'hi Error           ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi ErrorMsg        ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi WarningMsg      ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi Ignore          ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi SpecialKey      ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi WhiteSpaceChar  ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'
exec 'hi WhiteSpace      ctermfg=DarkGray     ctermbg=NONE    cterm=NONE    guifg=#' . s:bright_yellow . '    guibg=NONE    gui=NONE'

" --------------------------------
" Variable types
" --------------------------------
exec 'hi Constant        ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=#' . s:val_bg . '    gui=NONE'
exec 'hi String          ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:string_type . '    guibg=#' . s:string_bg . '    gui=NONE'
exec 'hi StringDelimiter ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:string_type . '    guibg=NONE    gui=NONE'
exec 'hi Character       ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=#' . s:val_bg . '    gui=NONE'
exec 'hi Number          ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=#' . s:val_bg . '    gui=NONE'
exec 'hi Boolean         ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=#' . s:val_bg . '    gui=NONE'
exec 'hi Float           ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=#' . s:val_bg . '    gui=NONE'
exec 'hi Identifier      ctermfg=White    ctermbg=NONE    cterm=bold    guifg=#' . s:fn_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi Function        ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:fn_fg . '    guibg=#' . s:fn_bg . '    gui=NONE'

" --------------------------------
" Language constructs
" --------------------------------
exec 'hi Keyword        ctermfg=White    ctermbg=NONE    cterm=bold    guifg=#' . s:fn_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi Statement       ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:id_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi Repeat          ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:id_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi Comment        ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:comments_fg . '    guibg=#' . s:comments_bg . '    gui=NONE'
exec 'hi SpecialComment        ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:comments_fg . '    guibg=#' . s:comments_bg . '    gui=NONE'
exec 'hi Conditional     ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:val_fg . '    guibg=NONE    gui=NONE'
exec 'hi Special         ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:id_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi SpecialChar     ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:id_fg . '    guibg=#' . s:id_bg . '    gui=NONE'
exec 'hi Tag             ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Delimiter       ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Debug           ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Repeat          ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Label           ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Operator        ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'
exec 'hi Exception       ctermfg=White        ctermbg=NONE    cterm=NONE    guifg=#' . s:sub_id . '    guibg=NONE    gui=NONE'

" ----------
" - C like -
" ----------
exec 'hi PreProc         ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi Include         ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi Define          ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi Macro           ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi PreCondit       ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi Type            ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi StorageClass    ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi Structure       ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
exec 'hi TypeDef         ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#' . s:type_fg . '    guibg=NONE    gui=NONE'
" --------------------------------
" Diff
" --------------------------------
highlight DiffDelete guifg=#fdb7b7 guibg=NONE
highlight DiffAdd guifg=#66ff00 guibg=NONE
highlight DiffChange guifg=#ffff00 guibg=NONE
highlight DiffText guifg=#c0c0c0 guibg=NONE
" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#8C8C8C    guibg=NONE    gui=NONE
hi PmenuSel        ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#8C8C8C    guibg=NONE    gui=NONE
hi PmenuSbar       ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#8C8C8C    guibg=NONE    gui=NONE
hi PmenuThumb      ctermfg=Gray     ctermbg=NONE    cterm=NONE    guifg=#8C8C8C    guibg=NONE    gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=210      ctermbg=NONE    cterm=NONE    guifg=#ffd700    guibg=NONE    gui=NONE
hi SpellCap        ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#ebe9e6    guibg=NONE    gui=NONE
hi SpellLocal      ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#ebe9e6    guibg=NONE    gui=NONE
hi SpellRare       ctermfg=White    ctermbg=NONE    cterm=NONE    guifg=#ebe9e6    guibg=NONE    gui=NONE
