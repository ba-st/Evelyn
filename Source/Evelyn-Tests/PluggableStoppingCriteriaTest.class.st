Class {
	#name : #PluggableStoppingCriteriaTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-StoppingCriteria'
}

{ #category : #'as yet unclassified' }
PluggableStoppingCriteriaTest class >> integrationReview [

	self toDo: 'Agregar casis de tests y sacar los que son equivalentes al de AgingStopCondition'.
	self toDo: 'Se podrian hacer casos mas interesantes con el bloque'
	
	
]

{ #category : #accessing }
PluggableStoppingCriteriaTest >> context [

	^ EvolutionaryAlgorithmContextBuilder forNumercialFunctions
		configureSurvivorsSelectionStrategyTo: (HighestNumbersSelection surviving: 40 / 100);
		build
]

{ #category : #accessing }
PluggableStoppingCriteriaTest >> contextWithSomeGeneration [
	| context |
	context := self context.
	context changeCurrentGenerationTo: self someGeneration.
	^ context
]

{ #category : #accessing }
PluggableStoppingCriteriaTest >> generationWithNumber: aNumber [
	^ EvolutionaryAlgorithmGeneration number: aNumber composedOf: #(1 2 3 4 5)
]

{ #category : #accessing }
PluggableStoppingCriteriaTest >> someGeneration [
	^ EvolutionaryAlgorithmGeneration number: 1 composedOf: #(1 2 3 4 5)
]

{ #category : #tests }
PluggableStoppingCriteriaTest >> testStopAtFirstGeneration [
	| condition |
	condition := PluggableStoppingCriteria stoppingWhen: [ :generation | generation number = 1 ].
	self assert: (condition isSatisfiedBy: (self generationWithNumber: 1))
]

{ #category : #tests }
PluggableStoppingCriteriaTest >> testStopAtGenerationNumberSeven [
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
]

{ #category : #tests }
PluggableStoppingCriteriaTest >> testStopConditionSatisfiedAtSecondIteration [
	| stoppingCriteria iterations |
	iterations := 0.
	stoppingCriteria := self timesConditionFor: 2.
	stoppingCriteria untilStoppingCriteriaIsMetDo: [ iterations := iterations + 1 ] workingOn: self contextWithSomeGeneration.
	self assert: iterations equals: 2
]

{ #category : #accessing }
PluggableStoppingCriteriaTest >> timesConditionFor: aNumberOfTimes [

	| iteration |

	iteration := 0.
	^ PluggableStoppingCriteria
		stoppingWhen: [ :generation | 
			iteration ~= aNumberOfTimes
				ifTrue: [ iteration := iteration + 1.
					false ]
				ifFalse: [ true ] ]
]
