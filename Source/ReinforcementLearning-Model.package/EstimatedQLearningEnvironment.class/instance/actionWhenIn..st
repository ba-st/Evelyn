accessing
actionWhenIn: aState

	^self shouldExplore
		ifTrue: [self exploringAction]
		ifFalse: [policy at: aState]