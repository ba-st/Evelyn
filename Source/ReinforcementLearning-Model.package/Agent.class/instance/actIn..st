processing
actIn: anEnvironment

	| currentState action reinforcement newState |
	currentState := anEnvironment stateFor: self.
	action := self actionWhenIn: currentState of: anEnvironment.
	reinforcement := anEnvironment reactTo: action doneBy: self.
	newState := anEnvironment stateFor: self.
	self
		adjustBehaviorAfterDoing: action
		in: currentState
		receiving: reinforcement
		endingIn: newState