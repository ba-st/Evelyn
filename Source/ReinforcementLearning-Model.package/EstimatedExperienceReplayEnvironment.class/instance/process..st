processing - private
process: anExperience

	experiences addFirst: anExperience.

	(anExperience reinforcement = maximumReinforcement) ifTrue: [self replayExperiences]