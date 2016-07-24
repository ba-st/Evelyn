building - private
successorsOf: aGeneration

	| survivors children mutatedChildren |

	survivors := self survivorsOf: aGeneration.
	children := self childrenOf: aGeneration afterSelecting: survivors.
	mutatedChildren := self mutatedChildrenOf: aGeneration obtainedFrom: children.

	^(OrderedCollection new)
		addAll: survivors;
		addAll: mutatedChildren;
		yourself