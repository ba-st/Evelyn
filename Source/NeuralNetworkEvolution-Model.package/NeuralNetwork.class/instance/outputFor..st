evaluating
outputFor: anInputCollection

	layers first computeOutputFor: anInputCollection.
	(2 to: layers size) do: [ :index | (layers at: index) computeOutput ].
	^ layers last output