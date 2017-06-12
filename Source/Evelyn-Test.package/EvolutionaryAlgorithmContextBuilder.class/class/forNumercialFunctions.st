as yet unclassified
forNumercialFunctions

	^self new 
	crossOverStrategy: NumericCrossOverStrategy new;
	mutator: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: NumericMutator);
	yourself	