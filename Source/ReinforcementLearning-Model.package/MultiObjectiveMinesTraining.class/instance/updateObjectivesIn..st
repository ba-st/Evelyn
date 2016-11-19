processing - private
updateObjectivesIn: world

	| agentLocation |
	agentLocation := world inhabitantLocations at: agent.

	(objectives includes: agentLocation)
		ifTrue: [objectives remove: agentLocation]