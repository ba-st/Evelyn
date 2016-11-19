processing - private
select: aNumberOfMutations placesIn: aGenotype

	| possibleGeneIndexes selectedGeneIndexes |

	possibleGeneIndexes := aGenotype numberOfGenes.
	selectedGeneIndexes := OrderedCollection new.
	aNumberOfMutations
		timesRepeat: [ selectedGeneIndexes add: (self selectUpToIndex: possibleGeneIndexes discarding: selectedGeneIndexes).
			possibleGeneIndexes := possibleGeneIndexes - 1 ].
	^ selectedGeneIndexes