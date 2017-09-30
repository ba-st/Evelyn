tests
testBuildWithoutAllParameters
	self should: [ EvolutionaryAlgorithmContextBuilder new build ] raise: InstanceCreationFailed description: 'User definition expected'