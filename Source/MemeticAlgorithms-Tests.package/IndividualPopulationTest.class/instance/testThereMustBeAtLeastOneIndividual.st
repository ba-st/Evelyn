test
testThereMustBeAtLeastOneIndividual

	self
		should: [ IndividualPopulation composedOfAll: #() ]
		raise: EvolutionException
		whoseDescriptionIncludes: 'Populations can''t be empty'
		description: ''