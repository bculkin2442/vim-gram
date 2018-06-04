if exists("b:current_syntax")
	finish
endif

syntax match gramPragma "\v^pragma"
highlight link gramPragma keyword

syntax match gramPragmaName "\v^pragma \zs\S+\ze"
highlight link gramPragmaName Identifier

syntax match gramComment "\v#.*$"
highlight link gramComment Comment

syntax match gramRuleRef "\v\[[^\]]+\]"
syntax match gramRuleDecl "\v^\[[^\]]+\]"

highlight link gramRuleDecl Type
highlight link gramRuleRef Identifier

syntax match gramParserRule "\v\<[^>]+\>"
highlight link gramParserRule PreProc

syntax match gramSpecialRule "\v\{[^\}]+\}"
highlight link gramSpecialRule Statement

syntax match gramVariable "\v\$\w+"
highlight link gramVariable Identifier

syntax match gramRange "\v\[\d+\.\.\d+\]"
highlight link gramRange Operator

let b:current_syntax="gram"
