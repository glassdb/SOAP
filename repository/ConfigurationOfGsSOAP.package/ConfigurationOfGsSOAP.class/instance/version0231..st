versions
version0231: spec 
	<version: '0.231' imports: #('0.231-baseline' )>
	
	spec for: #common do: [
		spec blessing: #beta ].
	spec for: #gemstone do: [
		spec
			project: 'Core' with: '0.231';
			project: 'Hyper' with: '0.231';
			yourself.
		spec 
			package: 'SoXML' with: 'SoXML.g-dkh.19';
			package: 'SOAP-Core' with: 'SOAP-Core.g-dkh.75';
			package: 'SOAP-Client' with: 'SOAP-Client.g-dkh.15';
			package: 'SOAP-Server' with: 'SOAP-Server.g-dkh.20';
			package: 'SOAP-Example' with: 'SOAP-Example.g-dkh.18';
			package: 'SOAP-TestCases' with: 'SOAP-TestCases-dkh.46';
			yourself].