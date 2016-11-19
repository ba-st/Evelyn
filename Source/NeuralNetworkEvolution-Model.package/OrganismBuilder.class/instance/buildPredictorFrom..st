organism building - private
buildPredictorFrom: aGenotype

	^ Predictor
		using: (self predictorNetworkFrom: aGenotype)
		doing: self randomAction twoDigitValue