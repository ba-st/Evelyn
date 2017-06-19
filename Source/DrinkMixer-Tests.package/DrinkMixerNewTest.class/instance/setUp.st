initialization
setUp
	drinkMixer := DrinkMixer
		mixing: self availableComponents
		toCreateAMixWithAlcoholContentOf: self alcoholContent
		costingAtMost: self maximumCost.
	startingIndividuals := self generateStartingIndividuals