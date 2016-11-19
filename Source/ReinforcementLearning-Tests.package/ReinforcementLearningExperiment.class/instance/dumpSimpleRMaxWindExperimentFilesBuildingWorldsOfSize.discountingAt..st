experimenting - wind - private
dumpSimpleRMaxWindExperimentFilesBuildingWorldsOfSize: aWorldSize discountingAt: aDiscountRate

	| fileStream |

	self resetStatistics.

	repetitions
		timesRepeat: [ self
				accumulateSimpleRMaxWindWindStatisticsBuildingWorldsOfSize: aWorldSize
				discountingAt: aDiscountRate ].

	fileStream := (resultsDirectory , 'Wind-SimpleRMax-W_'
		, aWorldSize printString , '-M_' , '-D_' , aDiscountRate printString
		, extension) asFileReference writeStream.

	self dumpStatisticsTo: fileStream