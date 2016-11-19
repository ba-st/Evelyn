converting - private
sensoryInputFor: anOrganism in: anEnvironment

	| angleAndDistance left right |

	angleAndDistance := anEnvironment dualAngleAndDistanceToFoodSourceNearest: anOrganism.
	angleAndDistance angle > 0
		ifTrue: [ left := 0.
			right := angleAndDistance angle ]
		ifFalse: [ left := angleAndDistance angle abs.
			right := 0 ].
	^ OrderedCollection with: left with: right with: angleAndDistance distance / anEnvironment maximumDistance