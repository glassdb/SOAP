I represend a SOAP service.

For example, to create ordered collection' s add: service:

service := SoapService implementor: orderedCollection selector: #add:.
service signature: (SoapServiceSignature name: 'add' paramNames: #(newElem)).

---
MU 10/5/2002 01:25