printing
printOn: aStream

	neurons
		do: [ :eachNeuron | 
			aStream nextPutAll: ' '.
			eachNeuron printOn: aStream ]