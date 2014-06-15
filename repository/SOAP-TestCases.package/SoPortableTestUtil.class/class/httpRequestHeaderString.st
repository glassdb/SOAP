private
httpRequestHeaderString
	| crlfString |
	crlfString := String with: Character cr with: Character lf.
	
	^ 'POST /StockQuote HTTP/1.1', crlfString, 
       'Host: www.stockquoteserver.com', crlfString, 
       'Content-Type: text/xml; charset="utf-8"', crlfString, 
       'Content-Length: 0', crlfString, 
       'SOAPAction: "Some-URI"', crlfString, crlfString