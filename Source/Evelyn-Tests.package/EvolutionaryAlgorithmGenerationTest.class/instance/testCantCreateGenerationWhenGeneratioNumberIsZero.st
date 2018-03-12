tests
testCantCreateGenerationWhenGeneratioNumberIsZero
	self
		should: [ EvolutionaryAlgorithmGeneration number: 0 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation numbered 0'