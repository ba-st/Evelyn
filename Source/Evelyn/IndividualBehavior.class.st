Class {
	#name : #IndividualBehavior,
	#superclass : #Object,
	#category : 'Evelyn-Core'
}

{ #category : #'instance creation' }
IndividualBehavior class >> fromGenotype: aGenotype [
	^ self subclassResponsibility
]

{ #category : #'offspring creation' }
IndividualBehavior >> genotype [
	^ self subclassResponsibility
]
