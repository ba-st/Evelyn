building
mutatedVersionOf: anIndividual

	| modifiedIndividual |

	modifiedIndividual := anIndividual genotype
		collect: [ :each | 
			self shouldMutate
				ifTrue: [ self mutatedValueFor: each ]
				ifFalse: [ each ] ].

	^ NumericIndividual
		basedOn: (BinaryCodex new fromBinary: modifiedIndividual)