experimenting - private
dumpStatisticsTo: fileStream

	[ accumulatedNumberOfMoves
		with: accumulatedProcessingTime
		do: [ :accumulatedNumber :accumulatedTime | 
			accumulatedNumber / repetitions asFloat printOn: fileStream.
			fileStream tab.
			accumulatedTime / repetitions asFloat printOn: fileStream.
			fileStream cr ] ]
		ensure: [ fileStream close ]