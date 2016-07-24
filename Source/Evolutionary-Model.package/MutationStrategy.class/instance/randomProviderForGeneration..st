building - private
randomProviderForGeneration: aGenerationNumber

	^self randomProviderType new: 0 sigma: (self calculateSigmaForGeneration: aGenerationNumber)