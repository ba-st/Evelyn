accessing
printStatistics

	Transcript
		cr;
		show: 'Peak;' , fitnesses first fitness printString , ';Average;' , ((fitnesses inject: 0 into: [ :sum :each | sum + each fitness ]) / fitnesses size) asFloat printString