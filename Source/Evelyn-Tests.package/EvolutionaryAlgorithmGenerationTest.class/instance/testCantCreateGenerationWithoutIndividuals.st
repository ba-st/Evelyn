tests
testCantCreateGenerationWithoutIndividuals
	self
		should: [ EvolutionaryAlgorithmGeneration number: 1 composedOf: #() ]
		raise: InstanceCreationFailed
		description: 'Its makes no sense a generation without individuals'