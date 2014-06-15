attributes
xsiNil
	"shortcut for performance"
	"xsi:null is Soap1.1"
	"xsi:nil is Soap1.2"
	^self at: #xsiNil ifAbsentPutValue: (self xsiPrefixColon, 'nil')