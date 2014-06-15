accessing
namespace
	namespace isNil ifTrue: [namespace := self defaultNamespace].
	^namespace