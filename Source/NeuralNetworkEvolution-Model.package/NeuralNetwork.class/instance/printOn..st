printing
printOn: aStream

	layers reverseDo: [ :eachLayer | eachLayer printOn: aStream ]