Class {
	#name : #City,
	#superclass : #Object,
	#instVars : [
		'name',
		'location'
	],
	#category : 'TravelingSalesmanProblem'
}

{ #category : #'instance creation' }
City class >> named: aName locatedAt: aPoint [
	^ self new initializeNamed: aName locatedAt: aPoint
]

{ #category : #comparing }
City >> = anObject [
	^ self == anObject or: [ (anObject isA: City) and: [ anObject name = self name and: [ anObject location = self location ] ] ]
]

{ #category : #comparing }
City >> hash [
	^ ('<1s><2s><3s>' expandMacrosWith: self className with: self name with: self location printString) hash
]

{ #category : #initialization }
City >> initializeNamed: aName locatedAt: aPoint [
	name := aName.
	location := aPoint
]

{ #category : #accessing }
City >> location [
	^ location
]

{ #category : #accessing }
City >> name [
	^ name
]

{ #category : #printing }
City >> printOn: aStream [
	aStream nextPutAll: self name
]
