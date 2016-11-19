evaluating
computeOutputFor: anInputCollection

	| outputs |

	outputs := OrderedCollection new.
	neurons with: anInputCollection do: [ :neuron :input | outputs add: (neuron outputFor: input) ].
	^ outputs