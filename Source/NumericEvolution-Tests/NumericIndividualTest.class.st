Class {
	#name : #NumericIndividualTest,
	#superclass : #TestCase,
	#category : 'NumericEvolution-Tests-Core'
}

{ #category : #tests }
NumericIndividualTest >> testComparison [
	| individualBasedOnNumberFive individualBasedOnNumberSix anotherIndividualBasedOnNumberFive anotherIndividualBasedOnNumberSix |
	individualBasedOnNumberFive := NumericIndividual basedOn: 5.
	anotherIndividualBasedOnNumberFive := NumericIndividual basedOn: 5.
	individualBasedOnNumberSix := NumericIndividual basedOn: 6.
	anotherIndividualBasedOnNumberSix := NumericIndividual basedOn: 6.
	self assert: individualBasedOnNumberFive equals: individualBasedOnNumberFive.
	self assert: individualBasedOnNumberFive equals: anotherIndividualBasedOnNumberFive.
	self assert: individualBasedOnNumberSix equals: individualBasedOnNumberSix.
	self assert: individualBasedOnNumberSix equals: anotherIndividualBasedOnNumberSix.
	self deny: individualBasedOnNumberFive = individualBasedOnNumberSix.
	self deny: individualBasedOnNumberSix = individualBasedOnNumberFive
]

{ #category : #tests }
NumericIndividualTest >> testGenotype [
	| individual binaryOfTen |
	individual := NumericIndividual basedOn: 10.
	binaryOfTen := OrderedCollection withAll: #(0 0 0 0 0 0 1 0 1 0).
	self assert: individual genotype equals: binaryOfTen
]

{ #category : #tests }
NumericIndividualTest >> testGenotypeWithNumberBasedOnEightySeven [
	| individual binaryOfEightySeven |
	individual := NumericIndividual basedOn: 87.
	binaryOfEightySeven := OrderedCollection withAll: #(0 0 0 1 0 1 0 1 1 1).
	self assert: individual genotype equals: binaryOfEightySeven
]

{ #category : #tests }
NumericIndividualTest >> testHash [
	self
		assert: (NumericIndividual basedOn: 5) hash equals: 138787777;
		assert: (NumericIndividual basedOn: 5) hash equals: (NumericIndividual basedOn: 5) hash;
		assert: (NumericIndividual basedOn: 51) hash equals: 252639050
]
