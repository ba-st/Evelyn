Class {
	#name : #RoadMap,
	#superclass : #IndividualBehavior,
	#instVars : [
		'cities'
	],
	#category : 'TravelingSalesmanProblem'
}

{ #category : #'instance creation' }
RoadMap class >> fromGenotype: cities [
	^ self touringThrough: cities
]

{ #category : #'instance creation' }
RoadMap class >> touringThrough: cities [
	^ self new initializeTouringThrough: cities
]

{ #category : #accesing }
RoadMap >> genotype [
	^ cities
]

{ #category : #accesing }
RoadMap >> initializeTouringThrough: aCities [
	cities := aCities
]
