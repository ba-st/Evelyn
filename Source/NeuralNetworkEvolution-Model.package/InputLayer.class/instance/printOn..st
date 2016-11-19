printing
printOn: aStream

	aStream
		nextPutAll:
			'
'.
	neurons
		do: [ :eachNeuron | 
			aStream nextPutAll: ' '.
			eachNeuron printOn: aStream ]