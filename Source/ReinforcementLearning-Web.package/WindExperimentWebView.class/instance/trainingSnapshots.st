accessing - private
trainingSnapshots

	| actions decisionMaker agent trainer |

	self resetRandomProvider.
	actions := self availableActions.
	decisionMaker := RMax allowedTo: actions discountingAt: discountRateView contents asNumber.
	agent := Agent guidedBy: decisionMaker.
	trainer := WindTrainer buildingWorldsOfSize: worldSizeView contents.
	trainer resultsOfTraining: agent.
	^ WindTrainingLog current trainingSnapshots