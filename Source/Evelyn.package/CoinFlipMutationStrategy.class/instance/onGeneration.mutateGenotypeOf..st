private - building
onGeneration: aGenerationNumber mutateGenotypeOf: anIndividual
	^ anIndividual genotype
		collect: [ :aGene | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ self mutatedGeneBasedOn: aGene ]
				ifFalse: [ aGene ] ]