instance creation
generating: anIndividualClass with: aProbabilityChance randomizedUsing: aRandomProvider
	^ self new
		initializeGenerating: anIndividualClass
		with: aProbabilityChance
		randomizedUsing: aRandomProvider