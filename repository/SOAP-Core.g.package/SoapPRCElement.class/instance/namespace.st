accessing
namespace
	namespace isNil ifTrue: [namespace := self class defaultNamespace].
	^namespace