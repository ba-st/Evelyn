learning - private
errorOf: predictedInput comparedTo: realInput

	| errors |

	errors := OrderedCollection new.
	realInput with: predictedInput do: [ :real :predicted | errors add: (real - predicted) abs ].
	^ errors