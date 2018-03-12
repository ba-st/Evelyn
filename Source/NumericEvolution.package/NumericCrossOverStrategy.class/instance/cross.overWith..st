evaluating
cross: parentA overWith: parentB
	| modifiedIndividual |
	modifiedIndividual := OrderedCollection new: parentA genotype size.
	self crossGenesOf: parentA and: parentB applying: [ :gen | modifiedIndividual add: gen ].
	^ NumericIndividual basedOn: (BinaryCodex new fromBinary: modifiedIndividual)