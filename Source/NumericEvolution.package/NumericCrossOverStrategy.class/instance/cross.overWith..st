evaluating
cross: parentA overWith: parentB
	| modifiedIndividual |
	modifiedIndividual := OrderedCollection new: parentA genotype size.
	self crossGenesOf: parentA and: parentB applying: [ :gene | modifiedIndividual add: gene ].
	^ NumericIndividual basedOn: (BinaryCodex new fromBinary: modifiedIndividual)