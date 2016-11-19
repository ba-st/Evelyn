accessing
averageResultsOf: aGenerationNumber in: aResultCollection

	| peak average variance |

	peak := 0.
	average := 0.
	variance := 0.
	registers
		do: [ :eachRegister | 
			peak := peak + (eachRegister peakOnGeneration: aGenerationNumber).
			average := average + (eachRegister averageOnGeneration: aGenerationNumber).
			variance := variance + (eachRegister varianceOnGeneration: aGenerationNumber) ].
	peak := peak / registers size.
	average := average / registers size.
	variance := variance / registers size.
	^ aResultCollection add: (GenerationFitnessRegister peakingAt: peak averaging: average withVariance: variance)