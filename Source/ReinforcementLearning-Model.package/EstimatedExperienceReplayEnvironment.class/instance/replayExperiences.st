processing - private
replayExperiences

	experiences do: [:experience | self adjustBehaviorAfter: experience].
	self initializeExperiences