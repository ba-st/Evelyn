printing
printOn: aStream

	registers
		do: [ :eachRegister | 
			eachRegister printOn: aStream.
			aStream
				nextPutAll:
					'
' ]