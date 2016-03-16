" moocowmoos fantabulous color scheme
" gui colors not sync'd yet

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="moo_lazyviz"
"
"

"hi SpellBad			ctermbg=226 ctermfg=88
hi SpellBad			ctermbg=160 ctermfg=226

hi Pmenu			ctermbg=0 ctermfg=196 guifg=#ff0000 guibg=#222222
hi PmenuSel			ctermbg=0 ctermfg=46 guifg=#00ff00 guibg=#000000
hi PmenuSbar        ctermbg=0 ctermfg=17 
"PmenuThumb     xxx cterm=reverse gui=reverse


hi SignColumn		ctermbg=0

hi MyTagListFileName	ctermbg=234 ctermfg=144
"TagListComment xxx links to Comment
"TagListFileName xxx ctermfg=15 ctermbg=242 guifg=white guibg=Grey
"TagListTitle   xxx links to Title
"TagListTagScope xxx links to Identifier
"TagListTagName xxx links to Search


hi BufferSelected ctermfg=46	ctermbg=0		cterm=NONE
hi BufferSelected guifg=#5f5faf	guibg=#5f005f	gui=NONE

"hi BufferNormal ctermfg=240	ctermbg=0	cterm=NONE
hi BufferNormal ctermfg=67		ctermbg=0		cterm=NONE
hi BufferNormal guifg=#5f87af	guibg=#000000	gui=NONE

hi Conditional	ctermfg=210		ctermbg=0
hi Conditional	guifg=#ff6666	guibg=#000000	gui=NONE

hi Normal		ctermfg=242	ctermbg=0
hi Normal		guifg=#336699 guibg=#000000


hi Error		ctermfg=46	ctermbg=196 term=NONE
hi Error		guifg=#00ff00 guibg=#ff0000

hi Directory	ctermfg=61	ctermbg=0
hi Comment		ctermbg=232 ctermfg=58
hi Todo			ctermfg=210	ctermbg=17

hi LineNr		ctermfg=236	ctermbg=0 
"hi LineNr		ctermfg=61	ctermbg=0 

hi Visual		ctermfg=none	ctermbg=23
hi Cursor		ctermfg=172	ctermbg=33 
hi CursorLine	ctermbg=17 
hi CursorColumn	ctermbg=17 
hi WarningMsg	ctermfg=226	ctermbg=232 cterm=NONE
hi ErrorMsg		ctermfg=196	ctermbg=232 cterm=NONE
hi Search		ctermfg=196	ctermbg=0   cterm=reverse

hi Title		ctermfg=98	ctermbg=0

hi Directory	guifg=#5f5faf	guibg=#000000
hi Comment		guifg=#333366	guibg=#121212
hi Todo			guifg=#ff6666	guibg=#00005f
hi LineNr		guifg=#333399	guibg=#000000
hi Visual		guifg=#585858	guibg=#5f005f	gui=NONE
"hi Cursor		guifg=#d78700	guibg=#0087ff 
hi Cursor		guifg=#000000	guibg=#ff0000
hi CursorLine	guifg=#000000	guibg=#ff0000
hi WarningMsg	guifg=#ffff00	guibg=#080808	gui=NONE
hi ErrorMsg		guifg=#ff0000	guibg=#080808	gui=NONE
hi Search		guifg=#000000	guibg=#ff6600


hi Constant		ctermfg=105	ctermbg=0
hi Include		ctermfg=162	ctermbg=0
"hi Identifier	ctermfg=140	ctermbg=0 cterm=NONE
"hi Identifier 	ctermfg=145 ctermbg=0 cterm=NONE
hi Identifier 	ctermfg=148 ctermbg=0 cterm=NONE

hi Statement	ctermfg=90  ctermbg=0
hi Character	ctermfg=226 ctermbg=0
hi String		ctermfg=64 	ctermbg=0
hi Number		ctermfg=203	ctermbg=0
hi Function		ctermfg=72	ctermbg=0
hi Operator		ctermfg=51	ctermbg=16
"hi Operator		ctermfg=105	ctermbg=16 cterm=NONE
hi Type			ctermfg=210	ctermbg=17
hi Repeat		ctermfg=118 ctermbg=0
hi Exception    ctermfg=208

hi Constant		guifg=#6666ff	guibg=#000000
hi Include		guifg=#990099	guibg=#000000
hi Identifier	guifg=#99cc00	guibg=#000000
hi Statement	guifg=#990099	guibg=#000000 gui=NONE
hi Character	guifg=#ffff00	guibg=#000000
hi String		guifg=#996633	guibg=#000000
hi Number		guifg=#ff3333	guibg=#000000
hi Function		guifg=#5faf87	guibg=#000000 gui=NONE
hi Operator		guifg=#6666ff	guibg=#000000 gui=NONE
hi Type			guifg=#ff6666	guibg=#00005f
hi Repeat		guifg=#ff6666	guibg=#000000

hi PreProc			ctermfg=173	ctermbg=17
hi perlVarMember	ctermfg=173	ctermbg=0
hi perlVarSimpleMemberName	ctermfg=130
hi perlType 		ctermfg=208	ctermbg=0
"hi perlType 		ctermfg=173	ctermbg=17
hi perlPackageRef	ctermfg=173	ctermbg=17
hi perlMethod		ctermfg=75	ctermbg=0
hi perlVarPlain		ctermfg=108	ctermbg=0
hi perlVarPlain2	ctermfg=101	ctermbg=0

hi podVerbatimLine ctermfg=240
hi perlOperatorBitRight ctermfg=196
hi perlOperatorBitLeft ctermfg=46

"hi perlVarPlain		ctermfg=37	ctermbg=0
"hi perlVarPlain		ctermfg=32	ctermbg=0
"hi perlVarSlash  	ctermfg=32	ctermbg=0
"hi perlVarBang    	ctermfg=147	ctermbg=0
"hi perlFunctionName ctermfg=147	ctermbg=0
"
hi perlOperatorCaret ctermfg=108
hi perlOperatorDollar ctermfg=108
hi perlHashKey ctermfg=108
hi perlOperatorTernaryCondition ctermfg=208
hi perlOperatorTernaryAlternate ctermfg=208
hi perlOperatorAssignAdd ctermfg=46
hi perlOperatorAssignSubtract ctermfg=196
hi perlOperatorAssignMultiply ctermfg=46

hi perlOperatorInfix ctermfg=33	ctermbg=0

hi perlOperatorAdd ctermfg=46
hi perlOperatorMultiply ctermfg=46
hi perlOperatorFileTests ctermfg=46
hi perlOperatorFileTestRead ctermfg=46
hi perlOperatorFileTestWrite ctermfg=196
hi perlOperatorSubtract ctermfg=196
hi perlOperatorDivide ctermfg=196
hi perlOperatorConcatenate ctermfg=190
hi perlOperatorIncrement ctermfg=46
hi perlOperatorComparitor ctermfg=190
hi perlOperatorDecrement  ctermfg=196
hi perlOperatorComma ctermfg=90
hi perlOperatorSemicolon ctermfg=180
hi perlOperatorFatComma ctermfg=90
hi perlOperatorGreaterThanEqual ctermfg=46
hi perlOperatorLessThanEqual    ctermfg=196
hi perlOperatorEqual       ctermfg=46
hi perlOperatorPatternMatch ctermfg=208
hi perlOperatorNegatedPatternMatch ctermfg=196
hi perlOperatorGreaterThan ctermfg=46
hi perlOperatorLessThan    ctermfg=196
hi perlOperatorNotEqual    ctermfg=196
hi perlOperatorModulus ctermfg=190
hi perlOperatorAsterisk ctermfg=190
hi perlOperatorLogicalAnd  ctermfg=46
hi perlOperatorLogicalOr   ctermfg=190
hi perlOperatorAnd  ctermfg=46
hi perlOperatorOr   ctermfg=190
hi perlOperatorNot  ctermfg=196

hi perlOperatorParen        ctermfg=25
hi perlOperatorCurlyBraces  ctermfg=25
hi perlOperatorBackslash  ctermfg=200

hi perlVariableLexcial ctermfg=208

hi PreProc			guifg=#cc6633	guibg=#000033
hi perlVarMember 	guifg=#cc6633	guibg=#000033
hi perlPackageRef 	guifg=#cc6633	guibg=#000033
hi perlMethod		guifg=#ff6633	guibg=#000033
hi perlVarPlain 	guifg=#9999ff	guibg=#000000 

hi perlVarSimpleMember 	ctermfg=33

hi perlOperatorFileTests ctermfg=226



au BufWinEnter *.pl,*.pm silent syn match  perlMethod	"\(->\)\I\i*" contained


hi Special		ctermfg=82	ctermbg=0

hi Special		guifg=#ff0033 guibg=#000000

hi SpecialKey	guifg=#d7ff00 guibg=#000000 gui=NONE


hi MatchParen	guibg=#00ff00
hi MatchParen	ctermbg=24 ctermfg=0

hi User1		ctermfg=235 ctermbg=237
hi User2		ctermfg=235 ctermbg=237
hi User3		ctermfg=235 ctermbg=237
hi User4		ctermfg=233 ctermbg=88	cterm=reverse
hi User5		ctermfg=233 ctermbg=28	cterm=reverse
hi User6		ctermfg=233 ctermbg=27	cterm=reverse

"needs patch, modified
hi User7		ctermfg=196 ctermbg=0 cterm=NONE
"needs patch
hi User9		ctermfg=208 ctermbg=0 cterm=NONE

hi StatusLine	ctermfg=233 ctermbg=40 cterm=reverse
hi StatusLineNC	ctermfg=233 ctermbg=238 cterm=reverse

hi User1		guifg=#262626 guibg=#3a3a3a
hi User2		guifg=#262626 guibg=#3a3a3a
hi User3		guifg=#262626 guibg=#3a3a3a
hi User4		guifg=#3a3a3a guibg=#870000	gui=reverse
hi User5		guifg=#3a3a3a guibg=#008700	gui=reverse
hi User6		guifg=#3a3a3a guibg=#005fff	gui=reverse
hi User7		guifg=#ffff5f guibg=#d7005f gui=NONE
hi User9		guifg=#eeeeee guibg=#ff0000 gui=NONE
hi StatusLine	guifg=#3a3a3a guibg=#a8a8a8 gui=reverse
hi StatusLineNC	guifg=#262626 guibg=#444444 gui=reverse

"hi NonText		ctermfg=234 ctermbg=233 cterm=NONE
"hi NonText		guifg=#000020 guibg=#000070 gui=reverse
hi NonText ctermfg=203

hi FoldColumn	ctermbg=232 ctermfg=102
hi Folded		ctermbg=232 ctermfg=244

hi FoldColumn	guifg=#00ff00 guibg=#111122
hi Folded		guifg=#663300  guibg=#1c1c1c




hi diffAdded   	ctermfg=46	ctermbg=0
hi diffRemoved	ctermfg=196	ctermbg=0
hi diffLine		ctermfg=202	ctermbg=0
hi diffFile		ctermfg=33	ctermbg=0

hi diffAdded   	guifg=#00ff00	guibg=#000000
hi diffRemoved	guifg=#ff0000	guibg=#000000
hi diffBDiffer	guifg=#ff0000	guibg=#000000
hi diffFile		guibg=#000000	guifg=#ffff00
hi diffLine		guibg=#000000	guifg=#ff8000
hi diffSubname	guibg=#000000	guifg=#888888

hi DiffAdd		ctermfg=none	ctermbg=0
hi DiffChange	ctermfg=239 ctermbg=17
hi DiffDelete	ctermfg=52	ctermbg=52
hi DiffText		ctermfg=46	ctermbg=17	cterm=NONE

hi diffsignAdd		ctermfg=none	ctermbg=22
hi diffsignChange	ctermfg=202 ctermbg=0
hi diffsignDelete	ctermfg=52	ctermbg=52
hi diffsignText		ctermfg=46	ctermbg=17	cterm=NONE

"hi DiffAdd		guifg=#ffff00	guibg=#003300
"hi DiffChange	guifg=#ffff00	guibg=#003300
"hi DiffDelete	guifg=#ff6600	guibg=#330000
"hi DiffText		guifg=#ffaf5f	guibg=#003300	gui=NONE
"
"
hi DiffAdd		guifg=#00ff00	guibg=#003300
hi DiffChange	guifg=#666600	guibg=#000066
hi DiffDelete	guifg=#660000	guibg=#330000
hi DiffText		guifg=#00ff00	guibg=#000033	gui=NONE
"hi DiffAdd		guifg=#5f8700	guibg=#005f5f
"hi DiffChange	guifg=#5f8700	guibg=#005f5f
"hi DiffDelete	guifg=#5f0000	guibg=#5f0000
"hi DiffText		guifg=#ffaf5f	guibg=#005f5f	gui=NONE


hi diffOnly			ctermfg=215	ctermbg=23	cterm=NONE
hi diffIdentical  	ctermfg=215	ctermbg=23	cterm=NONE
hi diffDiffer     	ctermfg=215	ctermbg=23	cterm=NONE
hi diffBDiffer    	ctermfg=215	ctermbg=23	cterm=NONE
hi diffIsA        	ctermfg=215	ctermbg=23	cterm=NONE
hi diffNoEOL      	ctermfg=215	ctermbg=23	cterm=NONE
hi diffCommon     	ctermfg=215	ctermbg=23	cterm=NONE
hi diffOnly			guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffIdentical  	guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffDiffer     	guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffBDiffer    	guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffIsA        	guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffNoEOL      	guifg=#ffaf5f	guibg=#005f5f	gui=NONE
hi diffCommon     	guifg=#ffaf5f	guibg=#005f5f	gui=NONE



hi ShowMarksHLl  cterm=none ctermfg=166 ctermbg=0
hi ShowMarksHLu  cterm=none ctermfg=166 ctermbg=0
hi ShowMarksHLm  cterm=none ctermfg=97  ctermbg=0
hi ShowMarksHLo  cterm=none ctermfg=97  ctermbg=0
hi ShowMarksHLlz cterm=none ctermfg=46  ctermbg=0
hi ShowMarksHLla cterm=none ctermfg=46  ctermbg=0
hi ShowMarksHLlz cterm=none ctermfg=46  ctermbg=0
hi ShowMarksHLlb cterm=none ctermfg=190 ctermbg=0
hi ShowMarksHLle cterm=none ctermfg=190 ctermbg=0


"hi VertSplit		cterm=NONE ctermfg=129 ctermbg=17
hi VertSplit		cterm=NONE ctermfg=17 ctermbg=0
hi VertSplit		gui=NONE guifg=#00005f guibg=#000000

"highlight doublespaces
"hi def DoubleSpace ctermbg=235
"hi def DoubleSpace guibg=#262626 gui=NONE
"au BufWinEnter * syn match DoubleSpace "  "

hi htmlTag      ctermfg=52
hi htmlEndTag   ctermfg=52
hi htmlArg      ctermfg=88
hi htmlTagName  ctermfg=88


hi TabLine      ctermbg=235 ctermfg=186
hi TabLineSel   ctermbg=234 ctermfg=202
hi TabLineFill  ctermbg=235 ctermfg=186 cterm=NONE


hi TrailingWhitespace ctermbg=88

" my 80 column indicator
hi EightyFirst      guifg=#ee0000           guibg=NONE              gui=none
hi EightyFirst      ctermfg=none            ctermbg=17             cterm=none
