initialize-release
initializeIn: anEstimatedEnvironment for: aState whenDoing: anAction

	environment := anEstimatedEnvironment.
	discountRate := anEstimatedEnvironment discountRate.
	state := aState.
	action := anAction.
	transitions := Dictionary new.
	attempts := 0.
	value := environment estimatedValueFor: aState.
	reinforcement := ValueSeries
				withInitialExpectedValue: environment maximumReinforcement