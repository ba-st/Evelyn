building
mutatedVersionOf: anIndividual

	| modifiedInvestments |

	modifiedInvestments :=
		anIndividual investments collect: [:each |

			self shouldMutate ifTrue: [self mutatedValueFor: each] ifFalse: [each]

			].

	^MixedDrink investing: modifiedInvestments