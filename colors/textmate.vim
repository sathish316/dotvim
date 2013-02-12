" Vim color file
" Converted from Textmate theme Mac Classic using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Textmate"

hi Cursor  guifg=NONE guibg=#000000 gui=NONE
hi Visual  guifg=NONE guibg=#c0ddfc gui=NONE
hi CursorLine  guifg=NONE guibg=#e9e9e9 gui=NONE
hi CursorColumn  guifg=NONE guibg=#e9e9e9 gui=NONE
hi LineNr  guifg=#b2b2b2 guibg=#fbfbfb gui=NONE ctermfg=7
hi VertSplit  guifg=#d3d3d3 guibg=#d3d3d3 gui=NONE
hi MatchParen  guifg=#d317c7 guibg=NONE gui=bold
hi StatusLine  guifg=#282828 guibg=#d3d3d3 gui=bold
hi StatusLineNC  guifg=#282828 guibg=#d3d3d3 gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#c0ddfc gui=NONE
hi IncSearch  guifg=NONE guibg=#eeb0ea gui=NONE
hi Search  guifg=NONE guibg=#eeb0ea gui=NONE
hi Directory  guifg=#c5060b guibg=NONE gui=bold
hi Folded  guifg=#3e84ff guibg=#fbfbfb gui=NONE
hi Normal  guifg=#282828 guibg=#fbfbfb gui=NONE
hi Boolean  guifg=#6616f6 guibg=NONE gui=bold
hi Character  guifg=#c5060b guibg=NONE gui=bold
hi Comment  guifg=#3e84ff guibg=NONE gui=NONE ctermfg=6
hi Conditional  guifg=#d317c7 guibg=NONE gui=bold
hi Define  guifg=#d317c7 guibg=NONE gui=bold
hi ErrorMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi Float  guifg=#ee281d guibg=NONE gui=bold
hi Function  guifg=#004fc8 guibg=NONE gui=bold ctermfg=4 cterm=bold
hi Identifier  guifg=#3c8595 guibg=NONE gui=bold
hi Keyword  guifg=#d317c7 guibg=NONE gui=bold
hi Label  guifg=#049b09 guibg=NONE gui=NONE
hi NonText  guifg=#bfbfbf guibg=#e9e9e9 gui=NONE
hi Number  guifg=#ee281d guibg=NONE gui=bold ctermfg=1
hi Operator  guifg=#d317c7 guibg=NONE gui=bold 
hi PreProc  guifg=#d317c7 guibg=NONE gui=bold
"hi Special  guifg=#282828 guibg=NONE gui=NONE
"hi SpecialKey  guifg=#bfbfbf guibg=#e9e9e9 gui=NONE
hi Statement  guifg=#d317c7 guibg=NONE gui=bold
hi StorageClass  guifg=#3c8595 guibg=NONE gui=bold
hi String  guifg=#049b09 guibg=NONE gui=NONE ctermfg=34
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#282828 guibg=NONE gui=bold
hi Todo  guifg=#3e84ff guibg=NONE gui=inverse,bold ctermfg=6 ctermbg=NONE cterm=inverse,bold
hi Type  guifg=#7269b4 guibg=NONE gui=bold
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi pythonInclude guifg=#8520dc guibg=NONE gui=bold ctermfg=93 cterm=bold
hi link pythonComment Comment
hi link pythonTodo Todo
hi pythonException cterm=bold ctermfg=1 guifg=#cb2319 gui=bold
hi link pythonExceptions pythonException
hi pythonPreCondit ctermfg=4
hi pythonRepeat guifg=#d317c7 ctermfg=5 cterm=bold
hi link pythonConditional pythonRepeat
hi link pythonOperator pythonRepeat
hi link pythonStatement pythonRepeat
hi link pythonBuiltin pythonRepeat
hi pythonEscape guifg=Red ctermfg=1
hi pythonDecorator guifg=#af00d7 ctermfg=13
hi pythonDoctestValue ctermfg=105
hi pythonDoctest ctermfg=129
hi treeCWD ctermfg=127
hi treeDirSlash ctermfg=27
hi Folded ctermbg=27 ctermfg=15
hi Visual ctermbg=189
hi shConditional ctermfg=92 cterm=bold
hi shDerefSimple ctermfg=5
hi shSpecial ctermfg=1
hi shVariable ctermfg=27 cterm=bold
hi awkStatement ctermfg=5
hi link cInclude pythonInclude
hi cIncluded ctermfg=27
hi cType ctermfg=5 cterm=bold
hi cRepeat ctermfg=5
hi link cConditional cRepeat
hi cCharacter ctermfg=4 cterm=bold
hi cStatement ctermfg=5
hi cppStatement ctermfg=4 cterm=bold
hi link cppStructure cppStatement
hi link cFloat Number
hi link rubyFunction Function
hi rubyBlockParameter ctermfg=27
hi rubyBoolean ctermfg=5
hi link rubyInclude pythonInclude
hi link rubyDefine pythonBuiltin
hi link rubyConditional pythonConditional
hi link rubyComment pythonComment
hi link rubyControl rubyDefine
hi rubyConstant ctermfg=92
hi link rubyRepeat rubyControl
hi rubyLocalVariableOrMethod ctermfg=92
hi rubyRailsUserClass ctermfg=93
hi rubyInstanceVariable ctermfg=26
hi rubyAccess cterm=bold ctermfg=160
hi javaScriptType ctermfg=5 cterm=bold
hi link javaScriptRepeat javaScriptType
hi link javaScriptConditional javaScriptType
hi javaScriptFuncName ctermfg=93
hi javaScriptFunction ctermfg=4 cterm=bold
hi link javaScriptBranch javaScriptType
hi link javaScriptBoolean javaScriptType
hi javaScriptPrototype ctermfg=201
hi link javaScriptThis javaScriptPrototype
hi link javaScriptOperator javaScriptType
hi javaScriptLabel ctermfg=27
hi coffeeAssign ctermfg=0
hi link coffeeKeyword pythonBuiltin
hi link coffeeConditional coffeeKeyword
hi link coffeeRepeat coffeeKeyword
hi link coffeeInclude pythonInclude
hi link coffeeObject Function
hi link coffeeObjAssign javaScriptLabel
hi link coffeeSpecialVar javaScriptThis
hi link coffeeBoolean javaScriptBoolean
hi link coffeeStatement coffeeBoolean
hi link coffeeFloat Number
hi htmlTag  guifg=#1c02ff guibg=NONE gui=NONE ctermfg=21
hi htmlEndTag  guifg=#1c02ff guibg=NONE gui=NONE ctermfg=21
hi htmlTagName  guifg=#1c02ff guibg=NONE gui=NONE ctermfg=26
hi htmlArg  guifg=#1c02ff guibg=NONE gui=NONE ctermfg=32
hi htmlSpecialChar  guifg=#c5060b guibg=NONE gui=bold ctermfg=1
hi djangoFilter ctermfg=63
hi djangoArgument ctermfg=125
hi djangoStatement ctermfg=93
hi markDownCode ctermfg=93
hi markdownLink ctermfg=26
hi link markdownUrl markdownLink
hi javaScriptFunction  guifg=#3c8595 guibg=NONE gui=bold
hi javaScriptRailsFunction  guifg=#3c4c72 guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=#0058e2 guibg=NONE gui=bold
hi yamlAlias  guifg=#0058e2 guibg=NONE gui=bold
hi yamlDocumentHeader  guifg=NONE guibg=#eeeeee gui=NONE
hi cssURL  guifg=#432bd7 guibg=NONE gui=NONE
hi cssFunctionName  guifg=#3c4c72 guibg=NONE gui=bold
hi cssColorProp ctermfg=129
hi cssColor  guifg=#c5060b guibg=NONE gui=bold
hi cssPseudoClassId  guifg=NONE guibg=NONE gui=NONE
hi cssClassName  guifg=NONE guibg=NONE gui=NONE ctermfg=92
hi cssTagName ctermfg=21
hi cssValueLength  guifg=#ee281d guibg=NONE gui=bold ctermfg=1
hi cssCommonAttr  guifg=#06960e guibg=NONE gui=bold
hi cssBraces  guifg=NONE guibg=NONE gui=NONE
hi cssURL ctermfg=34
