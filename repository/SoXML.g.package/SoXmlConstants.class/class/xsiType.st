attributes
xsiType
	"shortcut for performance"
	^self at: #xsiType ifAbsentPutValue: (self xsiPrefixColon, 'type')