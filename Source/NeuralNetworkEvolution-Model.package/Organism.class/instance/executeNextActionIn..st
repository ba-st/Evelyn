evaluating
executeNextActionIn: anEnvironment

	| nextMotorAction |

	nextMotorAction := self nextMotorActionIn: anEnvironment.
	anEnvironment adjustTo: (signalConverter actionForValue: plannedAction) by: self.
	plannedAction := nextMotorAction