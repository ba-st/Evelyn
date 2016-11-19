computing
decode: aResponseCollection
	
	| probabilities |
	probabilities := (-180 to: 180)
		collect:
			[:angle | Likelihood of: population generating: aResponseCollection whenPresentedWith: angle].	

	"^probabilities asSortedCollection last angle"
	^(probabilities
		asSortedCollection:
			[:a :b | a probability = 0 or: [b probability > 0 and: [a probability ln <= b probability ln]]])
		last angle