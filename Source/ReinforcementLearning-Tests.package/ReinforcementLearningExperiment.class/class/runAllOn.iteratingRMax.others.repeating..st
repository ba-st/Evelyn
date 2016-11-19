instance creation
runAllOn: location iteratingRMax: rMaxIterations others: nonRMaxIterations repeating: aNumberOfRepetitions

	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpExperienceReplayMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearningMinesExperimentFiles.
	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxWindExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpExperienceReplayWindExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearningWindExperimentFiles.
	(self writingResultsTo: location iterating: rMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpSimpleRMaxMultiObjectiveMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpExperienceReplayMultiObjectiveMinesExperimentFiles.
	(self writingResultsTo: location iterating: nonRMaxIterations repeatingExperiments: aNumberOfRepetitions) dumpQLearningMultiObjectiveMinesExperimentFiles