initialize - release
initializeEvolving: anInitialGeneration using: aGenerationBuilder stoppingWhen: aStoppingCriteria
	
	initialGeneration := anInitialGeneration.
	generationBuilder := aGenerationBuilder.
	stoppingCriteria := aStoppingCriteria