initialization
initializeGenerating: anIndividualClass applying: aMutator with: aProbabilityChance randomizedUsing: aRandomProvider
	probabilityChance := aProbabilityChance.
	randomProvider := aRandomProvider.
	individualClass := anIndividualClass.
	mutator := aMutator