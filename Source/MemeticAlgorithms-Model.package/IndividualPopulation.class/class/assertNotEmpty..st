preconditions
assertNotEmpty: anIndividualCollection

	anIndividualCollection isEmpty
		ifTrue: [ EvolutionException signal: 'Populations can''t be empty' ]