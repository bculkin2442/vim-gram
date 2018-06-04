if exists("b:current_syntax")
	finish
endif

syntax keyword gramKeyword pragma
highlight link gramKeyword keyword

syntax match gramComment "\v#.*$"
highlight link gramComment Comment

syntax match gramRuleRef "\v\[^\]]"
syntax match gramRuleDecl "\v^\[^\]]"
highlight link gramRuleDecl Type
highlight link gramRuleRef Identifier

syntax match gramParserRule "\v\<[^>]"
highlight link gramParserRule PreProc

set b:current_syntax="gram"
