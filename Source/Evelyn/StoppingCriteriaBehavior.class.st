Class {
	#name : #StoppingCriteriaBehavior,
	#superclass : #Object,
	#category : 'Evelyn-StoppingCriteria'
}

{ #category : #testing }
StoppingCriteriaBehavior >> isSatisfiedBy: aGeneration [
	self subclassResponsibility
]

{ #category : #evaluating }
StoppingCriteriaBehavior >> untilStoppingCriteriaIsMetDo: block workingOn: aContext [
	[ self isSatisfiedBy: aContext currentGeneration ] whileFalse: block
]
