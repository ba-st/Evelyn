experimenting - multi - private
dumpQLearnMOMinesExperimentFilesBuildingWorldsOfSize: aWorldSize planting: aNumberOfMines discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: explorationProbability

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumQLearnMOMinesStatsBuildingWorldsOfSize: aWorldSize
				planting: aNumberOfMines
				discountingAt: aDiscountRate
				learningAt: aLearningRate
				exploringWithProbability: explorationProbability ].

	fileStream := (resultsDirectory , 'MultiO-QLearning-W_'
		, aWorldSize printString , '-M_' , aNumberOfMines printString , '-D_'
		, aDiscountRate printString , '-L_' , aLearningRate printString
		, '-E_' , explorationProbability printString , extension)
		asFileReference writeStream.

	self dumpStatisticsTo: fileStream