evaluating
updateWeightsUsing: sensitivity

	| processedSensitivity |

	processedSensitivity := self learningFactor * sensitivity.
	inputs do: [ :eachConnection | eachConnection weight: eachConnection weight - (processedSensitivity * eachConnection from lastComputedOutput) ].
	bias := bias - processedSensitivity