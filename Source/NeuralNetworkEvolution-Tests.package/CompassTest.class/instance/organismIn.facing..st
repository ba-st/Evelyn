test support
organismIn: aPosition facing: aDirection

	| organism |

	organism := UsedOccupation representing: aPosition occupiedBy: NonLearningOrganism new facing: aDirection.
	^ organism