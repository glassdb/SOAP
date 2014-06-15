actions-hooks
prepareHeader 
	headerString := String
				streamContents: [:str | 
					str nextPutAll: 'POST ' , self reqURI printString , ' HTTP/1.0';
						nextPutAll: CrLf.
					str nextPutAll: 'Host: ' , self proxyURI host;
						nextPutAll: CrLf.
					str nextPutAll: 'User-Agent: GemStoneS/64 ', (System stoneVersionAt: #gsRelease);
						nextPutAll: CrLf.
					str nextPutAll: 'Content-length: ' , (bodyString size) printString;
						nextPutAll: CrLf.
					str nextPutAll: 'Content-type: text/xml; charset="', SoapSetting stringEncoding, '"';
						nextPutAll: CrLf.
					str nextPutAll: self soapAction printString;
						nextPutAll: CrLf.
					false ifTrue: [ 
						self prepareAdditionalsOn: str. "puts it's own CrLf on str"
						str nextPutAll: CrLf. "end of headers marker" ].
					str nextPutAll: bodyString;
						nextPutAll: CrLf].