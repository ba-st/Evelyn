instance creation
runAllOn: location iteratingRMax: rMaxIterations others: nonRMaxIterations repeating: aNumberOfRepetitions

	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpXPReplayMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearnMinesExperimentFiles.
	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxWindExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpXPReplayWindExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearnWindExperimentFiles.
	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxMOMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpXPReplayMultiObjectiveMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearnMOMinesExperimentFiles