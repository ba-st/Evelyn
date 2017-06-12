*NumericFunction
forNumercialFunctions
	^ self new
		crossOverStrategy: NumericCrossOverStrategy new;
		mutator: NumericMutator;
		yourself