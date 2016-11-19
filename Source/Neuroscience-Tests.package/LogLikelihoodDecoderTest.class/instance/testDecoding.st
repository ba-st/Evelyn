test
testDecoding
	
	| responses decoder |
	responses := population neurons collect: [:each | each responseTo: 0].
	decoder := LogLikelihoodDecoder considering: population.

	self assert: (decoder decode: responses) abs < 10