Class {
	#name : #NumericIndividual,
	#superclass : #IndividualBehavior,
	#instVars : [
		'number'
	],
	#category : 'NumericEvolution-Core'
}

{ #category : #'instance creation' }
NumericIndividual class >> basedOn: aNumber [
	^ self new initializeBasedOn: aNumber
]

{ #category : #'instance creation' }
NumericIndividual class >> fromGenotype: aGenotype [
	^ self basedOn: (BinaryCodex new fromBinary: aGenotype)
]

{ #category : #comparing }
NumericIndividual >> = anObject [
	^ self == anObject or:[(anObject isA: NumericIndividual) and: [ anObject number = self number ]]
]

{ #category : #accessing }
NumericIndividual >> binaryNumber [
	^ BinaryCodex new toBinary: number
]

{ #category : #accessing }
NumericIndividual >> genotype [
	^ self binaryNumber
]

{ #category : #comparing }
NumericIndividual >> hash [
	^ ('<1s><2s>' expandMacrosWith: self className with: self number asString) hash
]

{ #category : #initialization }
NumericIndividual >> initializeBasedOn: aNumber [
	number := aNumber
]

{ #category : #accessing }
NumericIndividual >> number [
	^ number
]
