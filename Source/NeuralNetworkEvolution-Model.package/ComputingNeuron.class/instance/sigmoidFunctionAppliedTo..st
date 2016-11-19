evaluating - private
sigmoidFunctionAppliedTo: aNumber

	| partialResult |

	^ [ partialResult := aNumber negated exp.
	1 / (1 + partialResult) ]
		on: ArithmeticError
		do: [ :ex | ex return: 0 ]