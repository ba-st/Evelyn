printing
printOn: aStream
	aStream
		nextPutAll: 'Generation: ';
		nextPutAll: number asString;
		crtab.
	individualsRecord
		do: [ :individualRecord | 
			aStream nextPutAll: individualRecord.
			aStream crtab ].
	aStream cr