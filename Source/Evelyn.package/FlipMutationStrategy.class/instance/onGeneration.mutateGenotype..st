building
onGeneration: aGenerationNumber mutateGenotype: aGenotype
	^ aGenotype
		collect: [ :aGen | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ self genMutate: aGen ]
				ifFalse: [ aGen ] ]