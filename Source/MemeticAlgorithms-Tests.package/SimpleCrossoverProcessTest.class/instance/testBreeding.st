test
testBreeding

	| population breeder result |

	population := self samplePopulation.
	breeder := SimpleCrossoverProcess cuttingAt: 0.4.
	result := breeder cross: population loggingTo: self.
	
	self
		assert: result numberOfIndividuals
		equals: population numberOfIndividuals.
		
	(1 to: result numberOfIndividuals by: 2)
		do:
			[ :index | self assert: result at: index representsCrossoverOf: population ]