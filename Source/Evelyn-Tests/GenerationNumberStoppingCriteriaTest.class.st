"
An AgingStopConditionTest is a test class for testing the behavior of AgingStopCondition
"
Class {
	#name : #GenerationNumberStoppingCriteriaTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-StoppingCriteria'
}

{ #category : #accessing }
GenerationNumberStoppingCriteriaTest >> generationWithNumber: aNumber [
	^ EvolutionaryAlgorithmGeneration number: aNumber composedOf: #(1 2 3 4 5)
]

{ #category : #tests }
GenerationNumberStoppingCriteriaTest >> testStopAtFirstGeneration [
	| condition |
	condition := GenerationNumberStoppingCriteria stoppingAfter: 1.
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))
]

{ #category : #tests }
GenerationNumberStoppingCriteriaTest >> testStopAtGenerationNumberSeven [
	| condition |
	condition := GenerationNumberStoppingCriteria stoppingAfter: 7.
	self
		deny: (condition isSatisfiedBy: (self generationWithNumber: 1));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 2));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 3));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 4));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 5));
		deny: (condition isSatisfiedBy: (self generationWithNumber: 6));
		assert: (condition isSatisfiedBy: (self generationWithNumber: 7))
]
