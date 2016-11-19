accessing
nextGene

	| gene |

	gene := genes first.
	genes removeFirst.
	^ gene