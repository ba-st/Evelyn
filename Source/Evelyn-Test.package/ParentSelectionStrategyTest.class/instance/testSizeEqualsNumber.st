tests
testSizeEqualsNumber

	| parentSelectionStrategy selectedParents |

	parentSelectionStrategy := ParentSelectionStrategy new.

	selectedParents := parentSelectionStrategy
		select: 10
		parentsFrom: self survivors.

	self assert: selectedParents size equals: 10