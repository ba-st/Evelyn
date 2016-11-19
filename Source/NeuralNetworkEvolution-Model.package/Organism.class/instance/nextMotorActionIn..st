evaluating - private
nextMotorActionIn: anEnvironment

	^ self networkOutputFor: (signalConverter inputFor: self in: anEnvironment)