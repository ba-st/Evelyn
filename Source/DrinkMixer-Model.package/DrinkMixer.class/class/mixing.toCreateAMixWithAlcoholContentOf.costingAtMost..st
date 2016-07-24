instance creation
mixing: aComponentCollection
	toCreateAMixWithAlcoholContentOf: aPercentage
	costingAtMost: aMonetaryeasurement

	^self new
		initializeMixing: aComponentCollection
		toCreateAMixWithAlcoholContentOf: aPercentage
		costingAtMost: aMonetaryeasurement