building - private
mutatedChildrenOf: aGeneration obtainedFrom: aCollectionOfIndividuals

	| mutator |

	mutator := self mutationStrategy onGeneration: aGeneration number.

	^aCollectionOfIndividuals collect: [:each |
		self
			obtainValidIndividualEvaluating: [mutator mutatedVersionOf: each]
			retrying: self numberOfTrials]