building
onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals
	| mutator |
	mutator := self onGeneration: aGenerationNumber.
	^ aCollectionOfIndividuals
		collect: [ :each | self obtainValidIndividualEvaluating: [ mutator mutatedVersionOf: each ] retrying: self numberOfTrials ]