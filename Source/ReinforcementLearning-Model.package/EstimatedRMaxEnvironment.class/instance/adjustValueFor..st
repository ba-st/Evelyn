processing - private
adjustValueFor: aState

	| chosenAction chosenQValue |
	chosenAction := self actionWhenIn: aState.
	chosenQValue := qValues at: aState -> chosenAction.
	actions do: 
			[:currentAction |
			| currentQValue |
			currentQValue := qValues at: aState -> currentAction.
			currentQValue > chosenQValue
				ifTrue: 
					[chosenAction := currentAction.
					chosenQValue := currentQValue]].
	policy at: aState put: chosenAction.
	values at: aState put: chosenQValue