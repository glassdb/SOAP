private-initialize
initParserAdapter
	"Currently YAXO and VWXML conscious"
	parserAdapter := SoYaxXMLParserAdapter
	
"self environment 
				at: #SoYaxXMLParserAdapter
				ifAbsent: [self environment
						at: #SoVWXMLParserAdapter
						ifAbsent: [Transcript cr; show: '##failed to initParserAdapter##']]"