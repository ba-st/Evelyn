*NumericEvolution
forNumercialFunctions
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutatorTo: NumericMutator;
		yourself