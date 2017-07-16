building
onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals
	aCollectionOfIndividuals
		collect: [ :anIndividual | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ individualClass fromGenotype: (self mutate: anIndividual) ]
				ifFalse: [ anIndividual ] ]