accessing
increaseFitnessOf: anOrganism

	(fitnesses detect: [ :fitness | fitness organism = anOrganism ]) registerIncrease