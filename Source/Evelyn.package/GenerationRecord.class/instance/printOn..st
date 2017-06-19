printing
printOn: aStream
	aStream
		nextPutAll: 'Generation: ';
		nextPutAll: number asString;
		crtab.
	individualsRecord
		do: [ :individualRecord | 
			individualRecord printOn: aStream.
			aStream crtab ].
	aStream cr