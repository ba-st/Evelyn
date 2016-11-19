evaluating - private
derivativeSigmoidFunctionAppliedTo: aNumber

	| partialResult |

	partialResult := self sigmoidFunctionAppliedTo: aNumber.
	^ partialResult * (1 - partialResult)