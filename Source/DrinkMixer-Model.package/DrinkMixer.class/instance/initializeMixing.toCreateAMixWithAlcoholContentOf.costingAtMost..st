initialization
initializeMixing: aComponentCollection
	toCreateAMixWithAlcoholContentOf: aPercentage
	costingAtMost: aMonetaryeasurement

	components := aComponentCollection.
	desiredAlcoholContent := aPercentage.
	maximumCost := aMonetaryeasurement.
	randomProvider := DhbNormalDistribution new.