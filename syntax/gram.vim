if exists("b:current_syntax")
	finish
endif

syntax keyword gramKeyword pragma
highlight link gramKeyword keyword

syntax match gramComment "\v#.*$"
highlight link gramComment Comment

syntax match gramRuleDecl "\v^\[^\]]"
highlight link gramRuleDecl Type

syntax match gramParserRule "\v\<[^\>]"
highlight link gramParserRule PreProc

let b:current_syntax="gram"
