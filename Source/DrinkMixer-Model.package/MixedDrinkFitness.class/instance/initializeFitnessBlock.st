initialize - release
initializeFitnessBlock

	fitnessBlock := [:mixedDrink | | alcoholContentFactor costFactor preferenceFactor
		  complexityFactor weighedFactors |

		costFactor := self costFactorOf: mixedDrink.
		alcoholContentFactor := self alcoholContentFactorOf: mixedDrink.
		preferenceFactor := self preferenceFactorOf: mixedDrink.
		complexityFactor := self complexityFactorOf: mixedDrink.

		weighedFactors :=
			costFactor + (preferenceFactor * 100) + (alcoholContentFactor * 10000) +
				(complexityFactor * 1000000).

		weighedFactors negated]

