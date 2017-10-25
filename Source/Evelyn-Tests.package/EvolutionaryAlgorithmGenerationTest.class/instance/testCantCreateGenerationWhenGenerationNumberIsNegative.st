tests
testCantCreateGenerationWhenGenerationNumberIsNegative
	self
		should: [ EvolutionaryAlgorithmGeneration number: -1 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		description: 'Its makes no sense a generation numbered with a negative number'