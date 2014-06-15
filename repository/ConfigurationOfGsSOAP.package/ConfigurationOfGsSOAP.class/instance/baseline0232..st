baselines
baseline0232: spec 
	<version: '0.232-baseline' imports: #('0.231-baseline' )>
	
	spec for: #gemstone do: [
		spec 
			package: 'SoXML' with: [ 
				spec 
					file: 'SoXML.g';
					requires: #('XML-Parser' 'Utf8Encoding') ];
			yourself.
		spec 
			project: 'XML-Parser' with: [
				spec
					className: 'ConfigurationOfGsMisc';
					loads: #('XML-Parser');
					projectPackage: [
						spec
							name: 'ConfigurationOfGsMisc';
							repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ]];
			project: 'Utf8Encoding' with: [
				spec
					className: 'ConfigurationOfGsMisc';
					loads: #('Utf8Encoding');
					projectPackage: [
						spec
							name: 'ConfigurationOfGsMisc';
							repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ]];
			yourself].