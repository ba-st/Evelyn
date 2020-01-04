Class {
	#name : #MutationStrategy,
	#superclass : #Object,
	#category : 'Evelyn-Mutation'
}

{ #category : #building }
MutationStrategy >> onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals [
	^ self subclassResponsibility
]
