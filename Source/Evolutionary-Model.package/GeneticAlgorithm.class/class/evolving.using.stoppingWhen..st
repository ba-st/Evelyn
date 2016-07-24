instance creation
evolving: anInitialGeneration using: aGenerationBuilder stoppingWhen: aStoppingCriteria

	^self new
		initializeEvolving: anInitialGeneration
		using: aGenerationBuilder
		stoppingWhen: aStoppingCriteria