processing - private
selectUpToIndex: maximumIndex discarding: alreadySelectedIndexes

	| selectedIndex |

	[ selectedIndex := RandomProvider instance nextNumberUpTo: maximumIndex.
	alreadySelectedIndexes includes: selectedIndex ] whileTrue.
	^ selectedIndex