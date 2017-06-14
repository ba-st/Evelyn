tests
testStopAtFirstGeneration

	| condition | 
	
	condition := AgingStopCondition stopAtGenerationNumber: 1.
	
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))