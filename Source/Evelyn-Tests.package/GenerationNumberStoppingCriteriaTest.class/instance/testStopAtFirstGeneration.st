tests
testStopAtFirstGeneration
	| condition |
	condition := GenerationNumberStoppingCriteria stoppingAfter: 1.
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))