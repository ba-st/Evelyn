accessing
nextGeneration
	| survivors children mutatedChildren oldGeneration |
	oldGeneration:= context currentGeneration.
	survivors := context survivorsOf: oldGeneration.
	children := context childrenOf: oldGeneration afterSelecting: survivors.
	mutatedChildren := context mutatedChildrenOf: oldGeneration obtainedFrom: children.
	^ self buildGeneration: oldGeneration number + 1 composedOf: mutatedChildren and: survivors