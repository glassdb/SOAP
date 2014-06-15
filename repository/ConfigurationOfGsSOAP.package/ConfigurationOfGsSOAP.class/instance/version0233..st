versions
version0233: spec 
	<version: '0.233' imports: #('0.232-baseline' )>
	
	spec for: #common do: [
		spec blessing: #release.
		spec description: '0.233 (dkh.11):
- port to GLASS 1.0-beta.8.7'.
		spec author: 'dkh'.
		spec timestamp: '10/20/2011 15:21'.  ].
	spec for: #gemstone do: [
		spec
			project: 'Core' with: '0.245';
			project: 'Hyper' with: '0.232';
			project: 'XML-Parser' with: '0.239.1';
			project: 'Utf8Encoding' with: '0.239.1';
			yourself.
		spec 
			package: 'SoXML' with: 'SoXML.g-dkh.19';
			package: 'SOAP-Core' with: 'SOAP-Core.g-jgf.76';
			package: 'SOAP-Client' with: 'SOAP-Client.g-dkh.15';
			package: 'SOAP-Server' with: 'SOAP-Server.g-dkh.20';
			package: 'SOAP-Example' with: 'SOAP-Example.g-dkh.19';
			package: 'SOAP-TestCases' with: 'SOAP-TestCases-dkh.48';
			yourself].