baseline
baseline: spec
  <baseline>
  spec for: #'common' do: [ spec blessing: #'baseline' ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        configuration: 'XMLSupport'
          with: [ 
              spec
                version: '1.0.5';
                loads: #('Core');
                repository:
                    'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ];
        yourself.
      spec
        package: 'SoXML'
          with: [ 
              spec
                file: 'SoXML.g';
                requires: #('XMLSupport') ];
        package: 'SOAP-Core'
          with: [ 
              spec
                file: 'SOAP-Core.g';
                requires: #('SoXML') ];
        package: 'SOAP-Client'
          with: [ 
              spec
                file: 'SOAP-Client.g';
                requires: #('SOAP-Core') ];
        package: 'SOAP-Server'
          with: [ 
              spec
                file: 'SOAP-Server.g';
                requires: #('SOAP-Core') ];
        package: 'SOAP-Example'
          with: [ 
              spec
                file: 'SOAP-Example.g';
                requires: #('SOAP-Client' 'SOAP-Server') ];
        package: 'SOAP-TestCases'
          with: [ spec requires: #('SOAP-Client' 'SOAP-Server') ];
        yourself.
      spec
        group: 'CI' with: #('SOAP-TestCases' 'SOAP-Example');
        yourself ]