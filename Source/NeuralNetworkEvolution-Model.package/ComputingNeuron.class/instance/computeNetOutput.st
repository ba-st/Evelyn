evaluating - private
computeNetOutput

	netOutput := (inputs inject: 0 into: [ :partialOutput :eachConnection | partialOutput + (eachConnection from lastComputedOutput * eachConnection weight) ]) + bias.
	^ netOutput