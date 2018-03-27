*Evelyn-Tests
should: aBlock raise: anException withDescription: aString
	self
		should: aBlock
		raise: anException
		withExceptionDo: [ :ex | self assert: ex messageText equals: aString ]