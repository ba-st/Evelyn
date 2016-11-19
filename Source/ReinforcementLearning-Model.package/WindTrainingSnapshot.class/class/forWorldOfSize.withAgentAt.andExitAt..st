instance creation
forWorldOfSize: aWorldSize withAgentAt: anAgentLocation andExitAt: anExitLocation

	^ self new
		initializeForWorldOfSize: aWorldSize
		withAgentAt: anAgentLocation
		andExitAt: anExitLocation