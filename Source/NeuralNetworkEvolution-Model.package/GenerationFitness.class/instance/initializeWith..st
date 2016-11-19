initialize-release
initializeWith: aPopulation

	fitnesses := SortedCollection sortBlock: [ :a :b | a > b ].
	aPopulation members do: [ :anOrganism | fitnesses add: (OrganismFitness of: anOrganism) ]