evaluating
executeNextActionIn: anEnvironment

	| networkOutput prediction |

	networkOutput := self networkOutputFor: (signalConverter inputFor: self in: anEnvironment).
	prediction := signalConverter predictionForValue: networkOutput.
	anEnvironment adjustTo: (signalConverter actionForValue: plannedAction) by: self.
	self learnFrom: (signalConverter sensoryInputFor: self in: anEnvironment) considering: prediction.
	plannedAction := networkOutput copyFrom: 3 to: 4