building
mutatedVersionOf: anIndividual

	| modifiedIndividual |

	modifiedIndividual := anIndividual genotype genes
		collect: [ :each | 
			self shouldMutate
				ifTrue: [ self mutatedValueFor: each ]
				ifFalse: [ each ] ].

	^ NumericIndividual
		basedOn: (BinaryCodex from: modifiedIndividual)