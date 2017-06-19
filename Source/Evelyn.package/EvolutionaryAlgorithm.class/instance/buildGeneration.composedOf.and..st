accessing
buildGeneration: aNumber composedOf: mutatedChildren and: survivors
	^ context
		buildGeneration: aNumber
		composedOf:
			(OrderedCollection new
				addAll: survivors;
				addAll: mutatedChildren;
				yourself)