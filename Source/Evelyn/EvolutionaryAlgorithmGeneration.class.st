Class {
	#name : #EvolutionaryAlgorithmGeneration,
	#superclass : #Object,
	#instVars : [
		'number',
		'individuals'
	],
	#category : 'Evelyn-Core'
}

{ #category : #'instance creation' }
EvolutionaryAlgorithmGeneration class >> number: aNumber composedOf: sortedIndividuals [
	AssertionCheckerBuilder new
		checking: [ :asserter | 
			asserter
				enforce: [ sortedIndividuals notEmpty ]
					because: 'Its makes no sense a generation without individuals';
				enforce: [ aNumber isZero not ]
					because: 'Its makes no sense a generation numbered 0';
				enforce: [ aNumber isInteger ]
					because: 'Its makes no sense a generation numbered with decimals';
				enforce: [ aNumber positive ]
					because: 'Its makes no sense a generation numbered with a negative number' ];
		raising: InstanceCreationFailed;
		buildAndCheck.
	^ self new initializeNumber: aNumber composedOf: sortedIndividuals
]

{ #category : #accessing }
EvolutionaryAlgorithmGeneration >> individuals [
	^ individuals
]

{ #category : #initialization }
EvolutionaryAlgorithmGeneration >> initializeNumber: aNumber composedOf: sortedIndividuals [
	number := aNumber.
	individuals := sortedIndividuals
]

{ #category : #accessing }
EvolutionaryAlgorithmGeneration >> number [
	^ number
]

{ #category : #accessing }
EvolutionaryAlgorithmGeneration >> size [
	^ self individuals size
]
