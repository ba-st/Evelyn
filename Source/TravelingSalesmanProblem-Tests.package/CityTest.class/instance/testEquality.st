tests
testEquality
	| city sameCity |
	city := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	sameCity := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	self assert: city equals: sameCity