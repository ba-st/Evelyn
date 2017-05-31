tests
testBuildWithoutAllParameters

	self
		should: [ EvolutionaryAlgorithmContextBuilder new build ]
		raise: InstanceCreationFailed
		description: 'Se espera definicion del usuario'