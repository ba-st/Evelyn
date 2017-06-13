fitness
createChildUsing: aCollectionOfIndividuals at: anIndex
	^ self
		obtainValidIndividualEvaluating:
			[ crossOverStrategy cross: (aCollectionOfIndividuals at: anIndex * 2 - 1) overWith: (aCollectionOfIndividuals at: anIndex * 2) ]
		retrying: self numberOfTrials