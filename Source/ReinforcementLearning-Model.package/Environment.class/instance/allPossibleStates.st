accessing
allPossibleStates

	| states |
	states := OrderedCollection new.

	1 to: grid size
		do: 
			[:xAxisCoordinate |
			1 to: grid size
				do: [:yAxisCoordinate | states add: xAxisCoordinate @ yAxisCoordinate]].

	^states