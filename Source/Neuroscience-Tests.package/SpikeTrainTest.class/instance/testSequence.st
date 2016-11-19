test
testSequence
	
	| train statistics |
	train := SpikeTrain withRate: 100 dividedInto: 1000.
	statistics := DhbStatisticalMoments new.

	10000
		timesRepeat:
			[| numberOfSpikes |
			numberOfSpikes := train describeSequence inject: 0 into: [:sum :spikeSignal | sum + spikeSignal].
			statistics accumulate: numberOfSpikes].

	self
		assert: (statistics average - 100) abs < 1;
		assert: (statistics variance - 100) abs < 15