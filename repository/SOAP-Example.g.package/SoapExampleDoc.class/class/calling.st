documentation
calling
^'
SoapCall >> addParameters: provides a handy way for attaching parameters to SoapCall.

| googleKey searchKey call |
googleKey := ''gAE2CMNBd1xA+bRPXOmLkmT9+X8Y3bwG''.
searchKey := ''squeak''. 

call := (SoapCallEntry tcpHost: ''api.google.com'' port: 80) newCall.
call targetObjectURI: ''http://api.google.com/search/beta2''.
call namespace: ''urn:GoogleSearch''.
call methodName: ''doGoogleSearch''.
call addParameters: {
    {#key. googleKey}.
    {#q. searchKey}. 
    {#start. 0. ''xsd:int''}.
    {#maxResults. 10. ''xsd:int''}.
    {#filter. true}.
    {#restrict. ''''}.
    {#safeSearch. false}.
    {#lr. ''''}.
    {#ie. ''latin1''}.
    {#oe. ''latin1''}
}.
call invokeAndReturn

---
MU 11/8/2005 10:07
'