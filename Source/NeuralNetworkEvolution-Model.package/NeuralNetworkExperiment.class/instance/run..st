running - private
run: aOneArgumentBlock

	| startTime |

	startTime := Time microsecondClockValue.
	ExperimentFitnessRegistry instance reset.
	1 to: parameters evolutions do: aOneArgumentBlock.
	Transcript
		cr;
		show: ((Time microsecondClockValue - startTime) / 1000000) asFloat printString.
	^ ExperimentFitnessRegistry instance averagedResults