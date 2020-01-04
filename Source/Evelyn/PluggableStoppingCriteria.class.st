Class {
	#name : #PluggableStoppingCriteria,
	#superclass : #StoppingCriteriaBehavior,
	#instVars : [
		'conditionBlock'
	],
	#category : 'Evelyn-StoppingCriteria'
}

{ #category : #'instance creation' }
PluggableStoppingCriteria class >> stoppingWhen: aBlock [

	^self new initializeStoppingWhen: aBlock
]

{ #category : #initialize }
PluggableStoppingCriteria >> initializeStoppingWhen: aBlock [
	conditionBlock := aBlock
]

{ #category : #testing }
PluggableStoppingCriteria >> isSatisfiedBy: aGeneration [
	^ conditionBlock value: aGeneration
]
