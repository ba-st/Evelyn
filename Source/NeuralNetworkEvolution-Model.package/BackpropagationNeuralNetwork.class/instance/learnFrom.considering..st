learning
learnFrom: realInput considering: predictedInput

	self computeSensitivitiesFor: (self errorOf: predictedInput comparedTo: realInput).
	self updatePredictorWeights