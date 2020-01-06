Class {
	#name : #PercentageProbability,
	#superclass : #ProbabilityChance,
	#instVars : [
		'percentage',
		'randomProvider'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
PercentageProbability class >> of: aPercentage [

	 ^self new initializeOf: aPercentage
]

{ #category : #asserting }
PercentageProbability >> checkBelow: aNumber [
	^ randomProvider random < percentage
]

{ #category : #initialization }
PercentageProbability >> initializeOf: aPercentage [

	percentage:= aPercentage / 100.
	randomProvider := UniformDistributionRandomProvider definedLowLimit: 0 andHighLimit: 1
]
