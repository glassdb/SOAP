fixtures
errorEnvelope
	
	^'

<env:Envelope

	xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"

	env:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">

	<env:Body>

		<m:DoSomeOtherThing xmlns:m="urn:stSoap:Person1234">

			<symbol>DIS</symbol>

		</m:DoSomeOtherThing>

	</env:Body>

</env:Envelope>

' copy.