sample instances
groupA
	"SoapSampleGroup groupA"
	| group |
	group := self new.
	group name: 'Squeak support'.
	group members add: SoapSampleCustomer customerA.
	group members add: SoapSampleCustomer customerB.
	^group