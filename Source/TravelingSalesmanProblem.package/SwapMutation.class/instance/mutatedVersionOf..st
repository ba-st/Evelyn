initialization
mutatedVersionOf: anIndividual
	| mutatedGenotype oneIndex anotherIndex |
	mutatedGenotype := anIndividual genotype copy.
	oneIndex := self randomEqulOrLowerThan: anIndividual genotype size.
	anotherIndex := self randomEqulOrLowerThan: anIndividual genotype size.
	mutatedGenotype swap: oneIndex with: anotherIndex.
	^ RoadMap fromGenotype: mutatedGenotype