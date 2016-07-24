building - private
createChildrenOf: aGeneration using: numberOfParentsNeeded

	| parents |

	parents :=
		self parentSelectionStrategy
			select: numberOfParentsNeeded
			parentsFrom: aGeneration individualsSortedBySurvivalCapacity.

	^(1 to: (self numberOfChildrenUsing: numberOfParentsNeeded))
		collect: [:index | self createChildUsing: parents at: index]