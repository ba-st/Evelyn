tests
testSelectedParetsAreIncludedInSurvivorsList

	| parentSelectionStrategy selectedParents |

	parentSelectionStrategy := ParentSelectionStrategy new.

	selectedParents := parentSelectionStrategy
		select: 10
		parentsFrom: self survivors.

	selectedParents do: [:parent | self assert: (self survivors includes: parent)]
	