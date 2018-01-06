tests
testBuildWithoutcrossOverStrategy
	self
		should: [ EvolutionaryAlgorithmContextBuilder new
				configureParentSelectionStrategyTo: self parentStrategy;
				configureStoppingCriteriaTo: self stoppingCriteria;
				configureRecordTo: self record;
				configureMutationStrategyTo: self mutationStrategy;
				configureSurvivorsSelectionStrategyTo: self survivorStrategy;
				build ]
		raise: InstanceCreationFailed
		withDescription: 'The cross over strategy should be configure by User'