Class {
	#name : #NumericMutator,
	#superclass : #IndividualMutator,
	#instVars : [
		'pi',
		'randomProvider'
	],
	#category : 'NumericEvolution-Core'
}

{ #category : #building }
NumericMutator >> mutate: anInteger using: aRandomProvider [
	^ aRandomProvider numberBetween: 0 and: 1
]
