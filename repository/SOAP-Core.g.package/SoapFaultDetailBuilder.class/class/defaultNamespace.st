accessing
defaultNamespace
	DefaultNamespace isNil
		ifTrue: [DefaultNamespace := 'http://www.mars.dti.ne.jp/~umejava/smalltalk/soapOpera/error/'].
	^ DefaultNamespace