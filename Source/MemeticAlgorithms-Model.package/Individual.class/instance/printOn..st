printing
printOn: aStream

	aStream nextPutAll: 'Genes: '.
	genes do: [ :aGene | aGene printOn: aStream ] separatedBy: [ aStream nextPut: $| ]