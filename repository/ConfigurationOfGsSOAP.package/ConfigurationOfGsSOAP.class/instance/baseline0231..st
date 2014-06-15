baselines
baseline0231: spec 
	<version: '0.231-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repositories: [
			spec
				repository: 'http://seaside.gemstone.com/ss/SOAP';
				repository: 'http://seaside.gemstone.com/ss/SoXML' ]].
	spec for: #gemstone do: [
		spec 
			package: 'SoXML' with: [ spec requires: #('Core') ];
			package: 'SOAP-Core' with: [ 
				spec 
					file: 'SOAP-Core.g';
					requires: #('SoXML' 'Hyper') ];
			package: 'SOAP-Client' with: [ 
				spec 
					file: 'SOAP-Client.g';
					requires: #('SOAP-Core') ];
			package: 'SOAP-Server' with: [ 
				spec 
					file: 'SOAP-Server.g';
					requires: #('SOAP-Core') ];
			package: 'SOAP-Example' with: [ 
				spec 
					file: 'SOAP-Example.g';
					requires: #('SOAP-Client' 'SOAP-Server') ];
			package: 'SOAP-TestCases' with: [ spec requires: #('SOAP-Client' 'SOAP-Server') ];
			yourself.
		spec
			project: 'Core' with: [
				spec
					className: 'ConfigurationOfGsCore';
					projectPackage: [
						spec
							name: 'ConfigurationOfGsCore';
							repository: 'http://seaside.gemstone.com/ss/GLASSproject' ]];
			project: 'Hyper' with: [
				spec
					className: 'ConfigurationOfGsHyper';
					projectPackage: [
						spec
							name: 'ConfigurationOfGsHyper';
							repository: 'http://seaside.gemstone.com/ss/hyper' ]];
			yourself.].