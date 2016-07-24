building - private
childrenOf: aGeneration afterSelecting: survivors

	| numberOfParentsNeeded |

	numberOfParentsNeeded := self numberOfParentsNeededFrom: aGeneration afterSelecting: survivors.

	^self createChildrenOf: aGeneration using: numberOfParentsNeeded