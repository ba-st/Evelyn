processing - private
make: aNumberOfMutations changesIn: aGenotype

	self mutate: aGenotype in: (self select: aNumberOfMutations placesIn: aGenotype).
	^ aGenotype