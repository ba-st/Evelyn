evaluating
predictorSensitivityFor: aSensitivitiesCollection

	| sensitivity derivativeFunctionResult |

	sensitivity := 0.
	derivativeFunctionResult := self derivativeActivationFunctionAppliedTo: self lastComputedNetOutput.
	(outputs copyFrom: 1 to: 2) with: aSensitivitiesCollection do: [ :eachConnection :eachSensitivity | sensitivity := sensitivity + (eachSensitivity * eachConnection weight * derivativeFunctionResult) ].
	^ sensitivity