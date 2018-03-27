tests
testBuildWithMinimalConfiguration
	| context |
	self
		shouldnt: [ context := EvolutionaryAlgorithmContextBuilder new
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureMutationStrategyTo: self mutationStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed.
	self assert: (context isA: EvolutionaryAlgorithmContext)