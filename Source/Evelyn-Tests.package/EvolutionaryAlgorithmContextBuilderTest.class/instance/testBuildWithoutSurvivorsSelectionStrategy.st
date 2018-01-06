tests
testBuildWithoutSurvivorsSelectionStrategy
	self
		should: [ EvolutionaryAlgorithmContextBuilder new
				configureParentSelectionStrategyTo: self parentStrategy;
				configureStoppingCriteriaTo: self stoppingCriteria;
				configureRecordTo: self record;
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureMutationStrategyTo: self mutationStrategy;
				build ]
		raise: InstanceCreationFailed
		withDescription: 'The survivor selection strategy should be configure by User'