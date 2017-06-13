fitness
childrenOf: aGeneration afterSelecting: survivors
	| numberOfParentsNeeded |
	numberOfParentsNeeded := parentSelectionStrategy numberOfParentsNeededFrom: aGeneration afterSelecting: survivors.
	^ self createChildrenOf: aGeneration using: numberOfParentsNeeded