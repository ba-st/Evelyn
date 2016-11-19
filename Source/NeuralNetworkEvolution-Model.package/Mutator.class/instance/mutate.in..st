processing - private
mutate: aGenotype in: aCollectionOfGeneIndexes

	aCollectionOfGeneIndexes do: [ :eachIndex | aGenotype atLocus: eachIndex put: (aGenotype atLocus: eachIndex) + RandomProvider instance nextWeight ]