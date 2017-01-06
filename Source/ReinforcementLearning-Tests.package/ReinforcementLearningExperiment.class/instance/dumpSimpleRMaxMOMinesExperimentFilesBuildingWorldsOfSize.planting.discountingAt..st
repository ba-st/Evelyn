experimenting - multi - private
dumpSimpleRMaxMOMinesExperimentFilesBuildingWorldsOfSize: aWorldSize planting: aNumberOfMines discountingAt: aDiscountRate

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumSimpleRMaxMOMinesStatsBuildingWorldsOfSize: aWorldSize
				planting: aNumberOfMines
				discountingAt: aDiscountRate ].

	fileStream := (resultsDirectory , 'MultiO-SimpleRMax-W_'
		, aWorldSize printString , '-M_' , aNumberOfMines printString , '-D_'
		, aDiscountRate printString , extension) asFileReference writeStream.

	self dumpStatisticsTo: fileStream