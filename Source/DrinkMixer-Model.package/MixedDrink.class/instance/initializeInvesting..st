initialize - release
initializeInvesting: anInvestmentSequence

	investments := anInvestmentSequence.
	cost := investments sumNumbers: [ :each | each ].
	proportions := investments
		collect: [ :each | 
			cost isZero
				ifTrue: [ 0 ]
				ifFalse: [ each / cost ] ]