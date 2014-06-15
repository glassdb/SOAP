URIs
nullEncURI
	"non standard squeak specific encoding - MU"
	^ self at: #soapNullEncURI ifAbsentPutValue: 'http://www.mars.dti.ne.jp/~umejava/smalltalk/soapOpera/null/encoding/'