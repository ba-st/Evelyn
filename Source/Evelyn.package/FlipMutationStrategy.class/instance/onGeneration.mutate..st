building
onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals
	^ aCollectionOfIndividuals
		collect: [ :anIndividual | 
			individualClass
				fromGenotype: (self onGeneration: aGenerationNumber mutateGenotypeOf: anIndividual) ]