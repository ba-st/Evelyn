tests
testAccessing
	| city |
	city := City named: 'Buenos Aires' locatedAt: -34.603722 @ -58.381592.
	self
		assert: city name equals: 'Buenos Aires';
		assert: city location equals: -34.603722 @ -58.381592