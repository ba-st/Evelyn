tests
testPrintOn
	| city printOfCity |
	city := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	printOfCity := String streamContents: [ :stream | city printOn: stream ].
	self assert: printOfCity equals: 'Buenos Aires'