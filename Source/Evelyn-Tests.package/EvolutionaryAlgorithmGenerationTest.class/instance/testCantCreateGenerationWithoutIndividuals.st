tests
testCantCreateGenerationWithoutIndividuals
	self
		should: [ EvolutionaryAlgorithmGeneration number: 1 composedOf: #() ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation without individuals'