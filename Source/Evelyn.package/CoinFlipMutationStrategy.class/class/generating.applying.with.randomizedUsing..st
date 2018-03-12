instance creation
generating: anIndividualClass applying: aMutator with: aProbabilityChance randomizedUsing: aRandomProvider
	^ self new
		initializeGenerating: anIndividualClass
		applying: aMutator
		with: aProbabilityChance
		randomizedUsing: aRandomProvider