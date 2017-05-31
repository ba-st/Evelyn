accessing
nextGenerationBasedOn: oldGeneration

	| survivors children mutatedChildren |

	survivors := context survivorsOf: oldGeneration.
	children := context childrenOf: oldGeneration afterSelecting: survivors.
	mutatedChildren := context mutatedChildrenOf: oldGeneration obtainedFrom: children.
	^ context
		buildGeneration: oldGeneration number + 1
		composedOf:
			(OrderedCollection new
				addAll: survivors;
				addAll: mutatedChildren;
				yourself)