tests
testStopAtGenerationNumberSeven
	| condition |
	condition := PluggableStoppingCriteria stoppingWhen: [ :generation | generation number = 7 ].
	self
		deny: (condition isSatisfiedBy: (self generationWithNumber: 1));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 2));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 3));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 4));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 5));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 6));
		assert: (condition isSatisfiedBy: (self generationWithNumber: 7))