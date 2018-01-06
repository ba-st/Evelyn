tests
testBuildWithoutAllParameters
	self
		should: [ EvolutionaryAlgorithmContextBuilder new build ]
		raise: InstanceCreationFailed
		withDescription: 'The survivor selection strategy should be configure by User'