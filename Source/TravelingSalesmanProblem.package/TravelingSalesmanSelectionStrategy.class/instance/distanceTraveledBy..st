sorting
distanceTraveledBy: anIndividual
	| totalDistance |
	totalDistance := 0.
	anIndividual genotype
		doWithIndex: [ :aCity :index | 
			| nextCity |
			nextCity := index = anIndividual genotype size
				ifTrue: [ anIndividual genotype at: 1 ]
				ifFalse: [ anIndividual genotype at: index + 1 ].
			totalDistance := totalDistance + (self distanceBetween: aCity and: nextCity) ].
	^ totalDistance