fitness
createChildrenOf: aGeneration using: numberOfParentsNeeded

	| parents |

	parents := parentSelectionStrategy
		select: numberOfParentsNeeded
		parentsFrom: (self sortByFitness: aGeneration individuals).

	^ (1 to: (self numberOfChildrenUsing: numberOfParentsNeeded))
		collect: [ :index | self createChildUsing: parents at: index ]