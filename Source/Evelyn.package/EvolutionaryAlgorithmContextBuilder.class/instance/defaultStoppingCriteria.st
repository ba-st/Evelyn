initialization
defaultStoppingCriteria
	^ PluggableStoppingCriteria
		analyzingGenerationWith: (AgingStopCondition stopAtGenerationNumber: 100)