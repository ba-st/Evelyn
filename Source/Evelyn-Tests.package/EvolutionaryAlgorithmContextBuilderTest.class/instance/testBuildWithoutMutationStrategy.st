tests
testBuildWithoutMutationStrategy
	self
		should: [ EvolutionaryAlgorithmContextBuilder new
				configureParentSelectionStrategyTo: self parentStrategy;
				configureStoppingCriteriaTo: self stoppingCriteria;
				configureRecordTo: self record;
				configureCrossOverStrategyTo: self crossOverStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed
		withDescription: 'The mutator should be configure by User'