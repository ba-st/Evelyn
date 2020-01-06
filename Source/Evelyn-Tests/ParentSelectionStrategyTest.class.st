"
A ParentSelectionStrategyTest is a test class for testing the behavior of ParentSelectionStrategy
"
Class {
	#name : #ParentSelectionStrategyTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Core'
}

{ #category : #accessing }
ParentSelectionStrategyTest >> survivors [
	^ OrderedCollection
		with: 1
		with: 2
		with: 3
		with: 4
]

{ #category : #tests }
ParentSelectionStrategyTest >> testSelectedParetsAreIncludedInSurvivorsList [
	| parentSelectionStrategy selectedParents |
	parentSelectionStrategy := ParentSelectionStrategy new.
	selectedParents := parentSelectionStrategy select: 10 parentsFrom: self survivors.
	selectedParents do: [ :parent | self assert: (self survivors includes: parent) ]
]

{ #category : #tests }
ParentSelectionStrategyTest >> testSizeEqualsNumber [
	| parentSelectionStrategy selectedParents |
	parentSelectionStrategy := ParentSelectionStrategy new.
	selectedParents := parentSelectionStrategy select: 10 parentsFrom: self survivors.
	self assert: selectedParents size equals: 10
]
