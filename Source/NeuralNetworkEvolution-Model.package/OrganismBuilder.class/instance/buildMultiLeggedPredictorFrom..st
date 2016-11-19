organism building - private
buildMultiLeggedPredictorFrom: aGenotype

	^ MultiLeggedPredictor using: (self multiLeggedPredictorNetworkFrom: aGenotype) doing: self randomMultiLeggedAction threeDigitValue