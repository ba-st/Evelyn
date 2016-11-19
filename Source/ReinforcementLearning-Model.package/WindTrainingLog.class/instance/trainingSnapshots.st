accessing
trainingSnapshots

	^ agentLocations
		collect: [ :agentLocation | 
			WindTrainingSnapshot
				forWorldOfSize: worldSize
				withAgentAt: agentLocation
				andExitAt: exitLocation ]