Class {
	#name : #TravelingSalesmanCrossOverStrategy,
	#superclass : #CrossOverStrategy,
	#instVars : [
		'randomProvider'
	],
	#category : 'Evelyn-StoppingCriteria'
}

{ #category : #evaluating }
TravelingSalesmanCrossOverStrategy >> cross: parentA overWith: parentB [
	| indexToCut head tail |
	indexToCut := (randomProvider numberBetween: 1 and: parentA genotype size) rounded.
	head := parentA genotype copyFrom: 1 to: indexToCut - 1.
	tail := parentB genotype reject: [ :genotype | head includes: genotype ].
	^ RoadMap
		fromGenotype:
			(head
				addAll: tail;
				yourself)
]

{ #category : #initialization }
TravelingSalesmanCrossOverStrategy >> initializeObtainingRandomNumbersFrom: aRandomProvider [
	randomProvider := aRandomProvider
]
