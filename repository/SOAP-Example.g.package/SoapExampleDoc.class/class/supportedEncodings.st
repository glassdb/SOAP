documentation
supportedEncodings
^'
SoapCore supports multi-encodings for passing data. There are merits and demerits. Please select what is appropriate for your purpose.

 ...building a call ...
 call encoding: #soapSqEncoding. "<-- you can specify encoding scheme here"
 ...invoking a call ...

Supported encoding symbols are:

#soapEncoding
    Default, not so cool, but SOAP 1.1 compliant 
#soapSqEncoding
    Squeak native base64 format, powerful for complex objects, but loses interoperability 
#soapSixxEncoding (included in full installation)
    Portable Smalltalk XML format, usable for complex objects, but need to translate XML for interoperability with other languages 
#soapSrpEncoding (included in full installation)
    Portable Smalltalk binary format, interoperable with other Smalltalks 
#nullEncoding
    tries to pass object `as is`, very fast, usable only for very primitive types (byte array, etc) 

---
MU 11/8/2005 10:07
'