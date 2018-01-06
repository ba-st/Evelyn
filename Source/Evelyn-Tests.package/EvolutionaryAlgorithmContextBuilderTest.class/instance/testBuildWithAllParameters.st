tests
testBuildWithAllParameters
	| context |
	self
		shouldnt: [ context := EvolutionaryAlgorithmContextBuilder new
				configureParentSelectionStrategyTo: self parentStrategy;
				configureStoppingCriteriaTo: self stoppingCriteria;
				configureRecordTo: self record;
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureMutationStrategyTo: self mutationStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed.
	self assert: (context isA: EvolutionaryAlgorithmContext)