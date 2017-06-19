tests
testStopAtFirstGeneration
	| condition |
	condition := PluggableStoppingCriteria
		stoppingWhen: [ :generation | generation number = 1 ].
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))