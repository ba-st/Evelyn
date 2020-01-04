Class {
	#name : #GenerationNumberStoppingCriteria,
	#superclass : #StoppingCriteriaBehavior,
	#instVars : [
		'generationToStop'
	],
	#category : 'Evelyn-StoppingCriteria'
}

{ #category : #'instance creation' }
GenerationNumberStoppingCriteria class >> stoppingAfter: anInteger [ 

	^self new initializeStoppingAfter: anInteger 
]

{ #category : #initialize }
GenerationNumberStoppingCriteria >> initializeStoppingAfter: anInteger [
	generationToStop := anInteger
]

{ #category : #testing }
GenerationNumberStoppingCriteria >> isSatisfiedBy: aGeneration [
	^ aGeneration number >= generationToStop
]
