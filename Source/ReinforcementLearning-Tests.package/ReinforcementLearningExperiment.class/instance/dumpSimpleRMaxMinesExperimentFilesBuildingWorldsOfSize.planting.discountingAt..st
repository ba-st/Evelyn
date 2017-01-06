experimenting - mines - private
dumpSimpleRMaxMinesExperimentFilesBuildingWorldsOfSize: aWorldSize planting: aNumberOfMines discountingAt: aDiscountRate

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumSimpleRMaxMinesStatsBuildingWorldsOfSize: aWorldSize
				planting: aNumberOfMines
				discountingAt: aDiscountRate ].

	fileStream := (resultsDirectory , 'Mines-SimpleRMax-W_' , aWorldSize printString
		, '-M_' , aNumberOfMines printString , '-D_' , aDiscountRate printString
		, extension) asFileReference writeStream.

	self dumpStatisticsTo: fileStream