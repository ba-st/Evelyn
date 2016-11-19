accessing - private
occupationAt: aCoordinate

	aCoordinate = exitLocation
		ifTrue: [ ^ 'Exit' ].
	aCoordinate = agentLocation
		ifTrue: [ ^ 'Agent' ].
	^ 'Nothing'