experimenting - wind - private
dumpXPReplayWindExperimentFilesBuildingWorldsOfSize: aWorldSize discountingAt: aDiscountRate learningAt: aLearningRate exploringWithProbability: explorationProbability

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumXPReplayWindStatsBuildingWorldsOfSize: aWorldSize
				discountingAt: aDiscountRate
				learningAt: aLearningRate
				exploringWithProbability: explorationProbability ].

	fileStream := (resultsDirectory , 'Wind-ExperienceReplay-W_'
		, aWorldSize printString , '-M_' , '-D_' , aDiscountRate printString
		, '-L_' , aLearningRate printString , '-E_'
		, explorationProbability printString , extension) asFileReference
		writeStream.

	self dumpStatisticsTo: fileStream