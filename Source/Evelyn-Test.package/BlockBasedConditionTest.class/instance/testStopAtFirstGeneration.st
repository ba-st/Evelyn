tests
testStopAtFirstGeneration
	| condition |
	condition := BlockBasedCondition
		resolveStopAfterEvaluate: [ :generation | generation number = 1 ].
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))