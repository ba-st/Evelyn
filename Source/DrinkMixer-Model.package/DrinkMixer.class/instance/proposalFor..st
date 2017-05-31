initialization
proposalFor: aComponentCollection

	| proposedInvestments |

	proposedInvestments := OrderedCollection new.

	aComponentCollection size timesRepeat: [| investment |
		investment := randomProvider random * maximumCost.
		investment := investment max: 0.
		proposedInvestments add: investment].

	^MixedDrink investing: proposedInvestments