tests
testCantCreateGenerationWhenGenerationNumberIsFraction
	self
		should: [ EvolutionaryAlgorithmGeneration number: 1.4 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		description: 'Its makes no sense a generation numbered with decimals'